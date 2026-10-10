import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NetworkHubScreen(),
    );
  }
}

class NetworkHubScreen extends StatefulWidget {
  const NetworkHubScreen({super.key});

  @override
  State<NetworkHubScreen> createState() => _NetworkHubScreenState();
}

class _NetworkHubScreenState extends State<NetworkHubScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadHtmlString(r'''
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

header{display:grid;grid-template-columns:auto 1fr auto;align-items:center;gap:28px;padding:32px 36px;background:var(--bg2);border:1px solid var(--border2);border-top:3px solid var(--red);border-radius:18px;margin-bottom:40px;position:relative;overflow:hidden;}
.hw-logo{width:52px;height:52px;background:var(--red);border-radius:12px;display:flex;align-items:center;justify-content:center;font-size:22px;font-weight:900;color:#fff;font-family:'JetBrains Mono',monospace;flex-shrink:0;}
.header-text h1{font-size:clamp(1.3rem,3vw,1.9rem);font-weight:900;color:#fff;line-height:1.2;margin-bottom:6px;}
.header-text p{font-size:13px;color:var(--muted);}
.header-meta{display:flex;flex-direction:column
