//b:useful/un-useful
//f:id
//e:type
//d:
var voteuse_act = function (b, f, e, d) {
    var c = "/j/" + e + "/" + f + (b ? "/useful" : "/useless");
    $.postJSON_withck(c, {}, function (j) {
        if (j.result) {
            if (d) {
                var h = $("#ucount" + f + "u"),
                    g = $("#ucount" + f + "l");
                if ((h.text() == j.usecount) && (g.text() == j.totalcount - j.usecount) && (j.result != "notself")) {
                    alert("你已经投过票了")
                }
                h.html(j.usecount);
                g.html(j.totalcount - j.usecount)
            } else {
                $("#voteuse_" + f).html('<span class="m gtleft">你的投票已经提交，谢谢。</span>');
                $("#userate_" + f).html('<p id="userate_%s" class="pl">' + j.usecount + "/" + j.totalcount + "的人觉得此评论有用:</p>")
            }
        }
        return false
    })
};
var vote_type={
    "d":"doulis",
    "r":"review",
    "c":"discussion",
    "s":"song",
};
var voteuseful = function (e, c) {
    var b = e.split("-");
    var d = vote_type[b[0]];
    return voteuse_act(true, b[1], d, c)
};
var voteuseless = function (e, c) {
    var b = e.split("-");
    var d = vote_type[b[0]];
    return voteuse_act(false, b[1], d, c)
};
Do(function () {
    $.ajax_withck = function (a) {
        if (a.type == "POST") {
            a.data = $.extend(a.data || {}, {
                ck: get_cookie("ck")
            })
        }
        return $.ajax(a)
    };
    $.postJSON_withck = function (a, b, c) {
        $.post_withck(a, b, c, "json")
    };
    $.post_withck = function (a, c, d, b) {
        if ($.isFunction(c)) {
            b = d;
            d = c;
            c = {}
        }
        return $.ajax({
            type: "POST",
            url: a,
            data: $.extend(c, {
                ck: get_cookie("ck")
            }),
            success: d,
            dataType: b || "text"
        })
    };
    $("html").click(function (c) {
        var a = $(c.target),
            b = a.attr("class");
        if (!b) {
            return
        }
        $(b.match(/a_(\w+)/gi)).each($.proxy(function (d, f) {
            var e = Douban[f.replace(/^a_/, "init_")];
            if (typeof e === "function") {
                c.preventDefault();
                e.call(this, c)
            }
        }, a[0]))
    })
});
/*
<a class="btn-useful " href="javascript:;" onclick="voteuseful('r-5421850',true)">有用</a>
<a class="btn-unuseful " href="javascript:;" onclick="voteuseless('r-5421850',true)">没用</a>
*/
