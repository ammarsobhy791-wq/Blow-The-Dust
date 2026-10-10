<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="author" content="Ammar Sobhy Fadel">
<title>Huawei VRP Hub — Ammar Sobhy Fadel</title>
<link href="https://fonts.googleapis.com/css2?family=Tajawal:wght@400;500;700;800;900&family=JetBrains+Mono:wght@400;600;700&display=swap" rel="stylesheet">
<style>
:root{
  --bg:#05080f;--bg2:#090d1a;--bg3:#0d1220;--bg4:#111827;
  --border:rgba(255,255,255,0.06);--border2:rgba(255,255,255,0.1);
  --text:#e8ecf4;--muted:#6b7499;--dim:#3d4466;
  --red:#e8192c;--red2:#ff3347;--red-glow:rgba(232,25,44,0.15);--red-dim:rgba(232,25,44,0.08);
  --green:#00c97a;--blue:#3d9eff;--yellow:#f5c518;
  --purple:#a78bfa;--orange:#fb923c;--cyan:#22d3ee;
  --cmd:#c8d3f5;--param:#fb923c;--comment:#4a5580;
}
*{box-sizing:border-box;margin:0;padding:0;}
body{font-family:'Tajawal',sans-serif;background:var(--bg);color:var(--text);min-height:100vh;line-height:1.6;}
.page{position:relative;max-width:1180px;margin:0 auto;padding:48px 24px 100px;}

/* HEADER */
header{display:grid;grid-template-columns:auto 1fr auto;align-items:center;gap:28px;padding:32px 36px;background:var(--bg2);border:1px solid var(--border2);border-top:3px solid var(--red);border-radius:18px;margin-bottom:40px;position:relative;overflow:hidden;}
header::before{content:'';position:absolute;top:0;right:0;width:300px;height:100%;background:radial-gradient(ellipse at top right,rgba(232,25,44,0.08) 0%,transparent 70%);pointer-events:none;}
.hw-logo{width:52px;height:52px;background:var(--red);border-radius:12px;display:flex;align-items:center;justify-content:center;font-size:22px;font-weight:900;color:#fff;font-family:'JetBrains Mono',monospace;flex-shrink:0;box-shadow:0 0 24px rgba(232,25,44,0.4);}
.header-text h1{font-size:clamp(1.3rem,3vw,1.9rem);font-weight:900;color:#fff;line-height:1.2;margin-bottom:6px;}
.header-text p{font-size:13px;color:var(--muted);}
.header-meta{display:flex;flex-direction:column;gap:7px;align-items:flex-end;flex-shrink:0;}
.mtag{font-size:11px;font-family:'JetBrains Mono',monospace;padding:4px 10px;border-radius:6px;white-space:nowrap;}
.mt-r{background:var(--red-dim);color:var(--red2);border:1px solid rgba(232,25,44,0.2);}
.mt-g{background:rgba(255,255,255,0.04);color:var(--muted);border:1px solid var(--border);}

/* VIEWS BAR */
.views-bar{display:flex;gap:0;margin-bottom:40px;background:var(--bg2);border:1px solid var(--border2);border-radius:14px;overflow:hidden;}
.view-item{flex:1;padding:16px 10px;text-align:center;border-left:1px solid var(--border);}
.view-item:last-child{border-left:none;}
.view-prompt{font-family:'JetBrains Mono',monospace;font-size:12px;font-weight:700;margin-bottom:4px;}
.view-name{font-size:11px;color:var(--muted);}
.view-cmd{font-size:10px;color:var(--dim);font-family:'JetBrains Mono',monospace;margin-top:3px;}
.v1 .view-prompt{color:var(--green);}
.v2 .view-prompt{color:var(--blue);}
.v3 .view-prompt{color:var(--yellow);}
.v4 .view-prompt{color:var(--purple);}

/* SECTION */
.sec-label{display:flex;align-items:center;gap:14px;margin-bottom:16px;}
.sec-icon{width:34px;height:34px;border-radius:10px;display:flex;align-items:center;justify-content:center;font-size:15px;flex-shrink:0;}
.sec-title{font-size:14px;font-weight:800;letter-spacing:.3px;}
.sec-sub{font-size:11px;color:var(--muted);margin-top:1px;}
.sec-line{flex:1;height:1px;background:var(--border);}

/* CMD BLOCK */
.cmd-block{background:var(--bg2);border:1px solid var(--border);border-radius:14px;overflow:hidden;margin-bottom:20px;}
.cmd-block-title{display:flex;align-items:center;justify-content:space-between;padding:10px 16px;background:var(--bg3);border-bottom:1px solid var(--border);}
.cmd-block-title span{font-size:10px;font-weight:700;font-family:'JetBrains Mono',monospace;letter-spacing:1px;color:var(--muted);}
.dot-row{display:flex;gap:5px;}
.dot{width:9px;height:9px;border-radius:50%;}
.d1{background:#ff5f57;}.d2{background:#febc2e;}.d3{background:#28c840;}
.cmd-table{width:100%;border-collapse:collapse;}
.cmd-table tr{border-bottom:1px solid var(--border);}
.cmd-table tr:last-child{border-bottom:none;}
.cmd-table tr:hover{background:rgba(255,255,255,0.015);}
.cmd-table td{padding:9px 16px;vertical-align:top;}
.cc{font-family:'JetBrains Mono',monospace;font-size:12px;color:var(--cmd);font-weight:600;white-space:pre;min-width:240px;padding-left:16px !important;}
.cc .kw{color:var(--red2);}
.cc .param{color:var(--param);}
.cc .opt{color:var(--purple);}
.dc{font-size:13px;color:var(--muted);padding-right:16px !important;}
.dc strong{color:var(--text);font-weight:700;}
.ti{display:inline-block;font-size:10px;background:var(--red-dim);color:var(--red2);border:1px solid rgba(232,25,44,0.2);padding:1px 6px;border-radius:4px;font-family:'JetBrains Mono',monospace;margin-right:3px;vertical-align:middle;}
.tp{display:inline-block;font-size:10px;background:rgba(0,201,122,0.08);color:var(--green);border:1px solid rgba(0,201,122,0.2);padding:1px 6px;border-radius:4px;font-family:'JetBrains Mono',monospace;margin-right:3px;vertical-align:middle;}
.tw{display:inline-block;font-size:10px;background:rgba(245,197,24,0.08);color:var(--yellow);border:1px solid rgba(245,197,24,0.2);padding:1px 6px;border-radius:4px;font-family:'JetBrains Mono',monospace;margin-right:3px;vertical-align:middle;}

/* GRIDS */
.g2{display:grid;grid-template-columns:1fr 1fr;gap:18px;margin-bottom:20px;}
.g3{display:grid;grid-template-columns:1fr 1fr 1fr;gap:16px;margin-bottom:20px;}
@media(max-width:900px){.g2,.g3{grid-template-columns:1fr;}}

/* SCENARIO */
.scenario{background:var(--bg2);border:1px solid var(--border);border-right:3px solid var(--red);border-radius:14px;padding:18px;margin-bottom:18px;}
.scenario-title{font-size:13px;font-weight:800;color:var(--red2);margin-bottom:10px;display:flex;align-items:center;gap:8px;}
.code-block{background:var(--bg);border:1px solid var(--border);border-radius:10px;padding:14px 16px;font-family:'JetBrains Mono',monospace;font-size:12px;color:var(--cmd);line-height:2;overflow-x:auto;}
.code-block .c{color:var(--comment);}
.code-block .k{color:var(--red2);}
.code-block .p{color:var(--param);}
.code-block .v{color:var(--green);}
.code-block .s{color:var(--cyan);}

/* COMPARISON TABLE */
.cmp-wrap{background:var(--bg2);border:1px solid var(--border);border-radius:14px;overflow:hidden;margin-bottom:36px;}
.cmp-table{width:100%;border-collapse:collapse;font-size:12px;}
.cmp-table th{background:var(--bg3);padding:10px 16px;text-align:right;font-size:10px;font-family:'JetBrains Mono',monospace;letter-spacing:1px;color:var(--muted);border-bottom:1px solid var(--border);font-weight:700;}
.cmp-table td{padding:10px 16px;border-bottom:1px solid var(--border);vertical-align:middle;}
.cmp-table tr:last-child td{border-bottom:none;}
.cmp-table tr:hover td{background:rgba(255,255,255,.02);}
.cisco{color:#1ba0d7;font-family:'JetBrains Mono',monospace;font-size:11px;}
.huawei{color:var(--red2);font-family:'JetBrains Mono',monospace;font-size:11px;}

/* BEST PRACTICES */
.bp-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(280px,1fr));gap:14px;margin-bottom:40px;}
.bp-card{background:var(--bg2);border:1px solid var(--border);border-radius:13px;padding:16px 18px;display:flex;gap:13px;}
.bp-num{width:28px;height:28px;border-radius:7px;background:var(--red-dim);border:1px solid rgba(232,25,44,0.2);color:var(--red2);font-weight:900;font-size:12px;display:flex;align-items:center;justify-content:center;flex-shrink:0;font-family:'JetBrains Mono',monospace;}
.bp-title{font-size:13px;font-weight:800;color:var(--text);margin-bottom:3px;}
.bp-body{font-size:11px;color:var(--muted);line-height:1.65;}
.bp-cmd{display:inline-block;margin-top:5px;font-family:'JetBrains Mono',monospace;font-size:11px;color:var(--cmd);background:var(--bg3);padding:2px 7px;border-radius:4px;}

.section-block{margin-bottom:40px;}
footer{text-align:center;padding-top:36px;border-top:1px solid var(--border);font-size:12px;color:var(--dim);}

/* CLASS GRID */
.class-grid{display:grid;grid-template-columns:repeat(5,1fr);gap:10px;margin-bottom:20px;}
@media(max-width:600px){.class-grid{grid-template-columns:1fr 1fr;}}
.class-card{background:var(--bg2);border:1px solid var(--border);border-radius:12px;padding:14px;text-align:center;}
.class-name{font-size:24px;font-weight:900;margin-bottom:3px;}
.class-range{font-size:10px;font-family:'JetBrains Mono',monospace;color:var(--muted);margin-bottom:6px;}
.class-use{font-size:11px;color:var(--muted);line-height:1.5;}

/* ===== LOGIN (terminal theme) ===== */
:root{--t:#00ff9c;--t2:#00c97a;}
#login{position:fixed;inset:0;z-index:999;background:#02060a;display:flex;align-items:center;justify-content:center;padding:20px;transition:opacity .7s ease,visibility .7s;overflow:hidden;font-family:'JetBrains Mono',monospace;direction:ltr}
#login.out{opacity:0;visibility:hidden}
#rain{position:absolute;inset:0;width:100%;height:100%;opacity:.28}
#login::after{content:'';position:absolute;inset:0;background:repeating-linear-gradient(0deg,rgba(0,0,0,.25) 0 1px,transparent 1px 3px);pointer-events:none}
.term{position:relative;z-index:2;width:100%;max-width:460px;background:rgba(3,10,14,.92);border:1px solid rgba(0,255,156,.35);border-radius:12px;box-shadow:0 0 50px rgba(0,255,156,.12),inset 0 0 30px rgba(0,255,156,.03);overflow:hidden}
.term-bar{display:flex;align-items:center;gap:6px;padding:10px 14px;background:#06141a;border-bottom:1px solid rgba(0,255,156,.2);font-size:11px;color:#3f8f72}
.term-bar b{margin-left:auto;font-weight:400}
.term-body{padding:22px 22px 24px}
.boot{font-size:11.5px;color:#3f8f72;line-height:1.8;margin-bottom:18px;min-height:78px}
.boot .ok{color:var(--t)}
.term h2{color:var(--t);font-size:20px;letter-spacing:2px;margin-bottom:4px;text-shadow:0 0 12px rgba(0,255,156,.5)}
.term .sub{color:#3f8f72;font-size:11px;margin-bottom:20px}
.fld{margin-bottom:14px}
.fld label{display:block;font-size:11px;color:var(--t2);margin-bottom:5px}
.fld .in{display:flex;align-items:center;gap:8px;background:#010609;border:1px solid rgba(0,255,156,.25);border-radius:7px;padding:0 12px}
.fld .in:focus-within{border-color:var(--t);box-shadow:0 0 0 3px rgba(0,255,156,.12)}
.fld .in span{color:var(--t);font-size:13px}
.fld input{flex:1;background:none;border:0;outline:0;color:#d8fff0;font:14px 'JetBrains Mono',monospace;padding:12px 0;min-width:0}
.btn-login{width:100%;margin-top:6px;padding:13px;background:rgba(0,255,156,.1);color:var(--t);border:1px solid var(--t);border-radius:7px;font:700 13px 'JetBrains Mono',monospace;letter-spacing:2px;cursor:pointer;transition:.2s}
.btn-login:hover{background:var(--t);color:#02060a;box-shadow:0 0 22px rgba(0,255,156,.5)}
#err{min-height:18px;margin-top:12px;font-size:11.5px;color:#ff4d5e;text-align:center}
.term.shake{animation:sh .35s}
@keyframes sh{25%{transform:translateX(-8px)}75%{transform:translateX(8px)}}
.warn{margin-top:14px;font-size:10px;color:#2f6f58;text-align:center}
.cur{display:inline-block;width:8px;height:14px;background:var(--t);vertical-align:middle;animation:bl 1s steps(2) infinite}
@keyframes bl{50%{opacity:0}}

/* ===== APP ===== */
#app{opacity:0;transition:opacity .7s ease}
#app.show{opacity:1}
.topbar{display:flex;justify-content:space-between;align-items:center;gap:10px;margin-bottom:16px;font-family:'JetBrains Mono',monospace;font-size:11px;color:var(--muted);direction:ltr}
.topbar .st::before{content:'';display:inline-block;width:8px;height:8px;border-radius:50%;background:var(--green);box-shadow:0 0 8px var(--green);margin-right:8px}
.btn-out{background:var(--red-dim);color:var(--red2);border:1px solid rgba(232,25,44,.35);border-radius:8px;padding:8px 16px;font:700 12px 'JetBrains Mono',monospace;cursor:pointer;transition:.2s}
.btn-out:hover{background:var(--red);color:#fff}
.author{grid-column:1/-1;display:flex;flex-wrap:wrap;align-items:center;gap:14px 24px;padding-top:20px;margin-top:4px;border-top:1px dashed var(--border2);position:relative}
.author .nm{font-size:18px;font-weight:900;color:#fff}
.author .role{font-size:12px;color:var(--green);font-family:'JetBrains Mono',monospace;direction:ltr;display:block;margin-top:2px}
.author .links{display:flex;flex-wrap:wrap;gap:8px;margin-right:auto}
.author a{display:inline-flex;align-items:center;gap:7px;font:12px 'JetBrains Mono',monospace;color:var(--cmd);text-decoration:none;background:var(--bg3);border:1px solid var(--border2);padding:7px 12px;border-radius:8px;direction:ltr;transition:.2s}
.author a:hover{border-color:var(--green);color:var(--green)}
.sig{font-size:12px;color:var(--muted);line-height:2}
.sig b{color:var(--text)}
.sig .cp{font-family:'JetBrains Mono',monospace;color:var(--green);font-size:11px}

/* fixes & responsiveness */
.cc{direction:ltr;text-align:left;cursor:copy}
.cc:active{background:rgba(0,201,122,.1)}
.code-block{direction:ltr;text-align:left;white-space:pre}
.g2>*,.g3>*{min-width:0}
.cmd-block{overflow-x:auto}
.cmp-wrap{overflow-x:auto}
.cmp-table td.cisco,.cmp-table td.huawei{direction:ltr;text-align:left;white-space:nowrap}
.toast{position:fixed;bottom:22px;left:50%;transform:translateX(-50%) translateY(20px);background:var(--green);color:#02110b;font:700 12px 'JetBrains Mono',monospace;padding:9px 18px;border-radius:8px;opacity:0;pointer-events:none;transition:.25s;z-index:50}
.toast.on{opacity:1;transform:translateX(-50%)}
@media(max-width:900px){header{grid-template-columns:auto 1fr}.header-meta{grid-column:1/-1;flex-direction:row;flex-wrap:wrap;align-items:flex-start}}
@media(max-width:700px){
 .page{padding:22px 12px 70px}
 header{padding:20px 16px;gap:16px}
 .views-bar{flex-wrap:wrap}.view-item{flex:1 1 50%;border-bottom:1px solid var(--border)}
 .cmd-table,.cmd-table tbody,.cmd-table tr,.cmd-table td{display:block;width:100%}
 .cc{min-width:0;white-space:pre-wrap;word-break:break-word;padding:10px 14px 2px !important}
 .dc{padding:0 14px 10px !important}
 .author .links{margin-right:0}
}
@media print{#login,.btn-out,.topbar{display:none!important}#app{opacity:1!important}}
</style>
</head>
<body>
<div id="login">
  <canvas id="rain"></canvas>
  <form class="term" id="lf" autocomplete="off" action="javascript:void(0)" onsubmit="return false">
    <div class="term-bar"><i class="dot d1"></i><i class="dot d2"></i><i class="dot d3"></i><b>root@vrp-hub:~# ssh secure-login</b></div>
    <div class="term-body">
      <div class="boot" id="boot"></div>
      <h2>&gt; NETWORK HUB<span class="cur"></span></h2>
      <div class="sub">Huawei VRP · Restricted Access · Authorized Personnel Only</div>
      <div class="fld"><label for="u">USERNAME</label><div class="in"><span>$</span><input id="u" type="text" placeholder="admin" autocomplete="off" autocapitalize="off" spellcheck="false"></div></div>
      <div class="fld"><label for="p">PASSWORD</label><div class="in"><span>#</span><input id="p" type="password" placeholder="••••••••" autocomplete="off"></div></div>
      <button class="btn-login" type="submit">[ LOGIN ]</button>
      <div id="err"></div>
      <div id="jsw" style="margin-top:12px;font-size:11px;color:#ff4d5e;text-align:center">⚠ JavaScript failed to load — re-upload the full file</div>
      <div class="warn">⚠ Unauthorized access is logged and prohibited</div>
    </div>
  </form>
</div>
<div class="page" id="app" hidden>

<!-- HEADER -->
<div class="topbar"><span class="st">SESSION: AUTHENTICATED · admin@vrp-hub</span><button class="btn-out" id="logout" type="button">⏻ LOGOUT</button></div>
<header>
  <div class="hw-logo">华为</div>
  <div class="header-text">
    <h1>Huawei VRP — Command Reference &amp; Cheat Sheet</h1>
    <p>Enterprise Switches &amp; Routers · Production Quick Reference · Real-World Ready</p>
  </div>
  <div class="header-meta">
    <span class="mtag mt-r">VRP V200R Series</span>
    <span class="mtag mt-g">S-Series Switches</span>
    <span class="mtag mt-g">AR-Series Routers</span>
    <span class="mtag mt-g">CE-Series DC Switches</span>
  </div>
  <div class="author">
    <div><div class="nm" style="direction:ltr">Ammar Sobhy Fadel</div><span class="role">Mobile Application &amp; Ethical Hacking</span></div>
    <div class="links">
      <a href="mailto:ammarsobhy791@gmail.com">✉ ammarsobhy791@gmail.com</a>
      <a href="https://github.com/ammarsobhy791" target="_blank" rel="noopener">⌥ GitHub: ammarsobhy791</a>
    </div>
  </div>
</header>

<!-- VRP VIEWS -->
<div class="section-block">
  <div class="sec-label">
    <div class="sec-icon" style="background:rgba(232,25,44,0.1);">🖥️</div>
    <div><div class="sec-title">VRP Views — مستويات الوصول</div><div class="sec-sub">كل مستوى له صلاحيات مختلفة</div></div>
    <div class="sec-line"></div>
  </div>
  <div class="views-bar">
    <div class="view-item v1">
      <div class="view-prompt">&lt;Huawei&gt;</div>
      <div class="view-name">User View</div>
      <div class="view-cmd">عرض فقط</div>
    </div>
    <div class="view-item v2">
      <div class="view-prompt">[Huawei]</div>
      <div class="view-name">System View</div>
      <div class="view-cmd">system-view</div>
    </div>
    <div class="view-item v3">
      <div class="view-prompt">[Huawei-GE0/0/0]</div>
      <div class="view-name">Interface View</div>
      <div class="view-cmd">interface GE0/0/0</div>
    </div>
    <div class="view-item v4">
      <div class="view-prompt">[Huawei-ospf-1]</div>
      <div class="view-name">Protocol View</div>
      <div class="view-cmd">ospf 1 / vlan 10 / aaa</div>
    </div>
  </div>
</div>

<!-- BASIC SYSTEM -->
<div class="section-block">
  <div class="sec-label">
    <div class="sec-icon" style="background:rgba(61,158,255,0.1);">⚙️</div>
    <div><div class="sec-title" style="color:var(--blue)">Basic System Commands</div><div class="sec-sub">الأوامر الأساسية لإدارة الجهاز</div></div>
    <div class="sec-line"></div>
  </div>
  <div class="g2">
    <div class="cmd-block">
      <div class="cmd-block-title"><div class="dot-row"><div class="dot d1"></div><div class="dot d2"></div><div class="dot d3"></div></div><span>NAVIGATION & SAVE</span></div>
      <table class="cmd-table">
        <tr><td class="cc"><span class="kw">system-view</span></td><td class="dc"><strong>دخول System View</strong> من User View</td></tr>
        <tr><td class="cc"><span class="kw">quit</span></td><td class="dc">الرجوع مستوى واحد لأعلى</td></tr>
        <tr><td class="cc"><span class="kw">return</span></td><td class="dc">الرجوع لـ User View مباشرة <span class="ti">= Ctrl+Z</span></td></tr>
        <tr><td class="cc"><span class="kw">undo</span> <span class="param">[command]</span></td><td class="dc">إلغاء أي أمر <span class="ti">= "no" في Cisco</span></td></tr>
        <tr><td class="cc"><span class="kw">sysname</span> <span class="param">SW-CORE-01</span></td><td class="dc">تغيير اسم الجهاز</td></tr>
        <tr><td class="cc"><span class="kw">save</span></td><td class="dc"><strong>حفظ الـ Config</strong> <span class="tp">⭐ افعلها دايماً</span></td></tr>
        <tr><td class="cc"><span class="kw">reset saved-configuration</span></td><td class="dc">مسح الـ Config المحفوظة <span class="tw">⚠ خطر</span></td></tr>
        <tr><td class="cc"><span class="kw">reboot</span></td><td class="dc">إعادة تشغيل الجهاز <span class="tw">⚠ Production</span></td></tr>
      </table>
    </div>
    <div class="cmd-block">
      <div class="cmd-block-title"><div class="dot-row"><div class="dot d1"></div><div class="dot d2"></div><div class="dot d3"></div></div><span>DISPLAY & VERIFY</span></div>
      <table class="cmd-table">
        <tr><td class="cc"><span class="kw">display version</span></td><td class="dc">إصدار VRP والـ Hardware</td></tr>
        <tr><td class="cc"><span class="kw">display current-configuration</span></td><td class="dc">الـ Running Config <span class="ti">= sh run</span></td></tr>
        <tr><td class="cc"><span class="kw">display saved-configuration</span></td><td class="dc">الـ 