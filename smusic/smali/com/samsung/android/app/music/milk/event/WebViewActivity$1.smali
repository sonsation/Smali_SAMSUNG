.class Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mLoadingHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPageFinished - Loading web page is finished."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 142
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPageStarted - Loading web page is started."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageStarted - URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$102(Lcom/samsung/android/app/music/milk/event/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mLoadingHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$200(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 164
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shouldOverrideKeyEvent - Keyevent get WebView"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 167
    .local v1, "keycode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 169
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 170
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$300()Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    sparse-switch v1, :sswitch_data_0

    .line 202
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$302(Z)Z

    .line 207
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 173
    :sswitch_0
    const-string/jumbo v2, "togglepause"

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :sswitch_1
    const-string/jumbo v2, "play"

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :sswitch_2
    const-string/jumbo v2, "stop"

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :sswitch_3
    const-string/jumbo v2, "pause"

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :sswitch_4
    const-string/jumbo v2, "previous"

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :sswitch_5
    const-string v2, "next"

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :sswitch_6
    const-string v2, "fastforward"

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :sswitch_7
    const-string/jumbo v2, "rewind"

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :sswitch_8
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onReceive - key code volume"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$302(Z)Z

    goto :goto_1

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_8
        0x19 -> :sswitch_8
        0x55 -> :sswitch_0
        0x56 -> :sswitch_2
        0x57 -> :sswitch_5
        0x58 -> :sswitch_4
        0x59 -> :sswitch_7
        0x5a -> :sswitch_6
        0x7e -> :sswitch_1
        0x7f -> :sswitch_3
        0xa4 -> :sswitch_8
    .end sparse-switch
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 112
    if-eqz p2, :cond_2

    .line 113
    const-string/jumbo v5, "radio://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "samu://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {v4, p2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->handleDeepLink(Ljava/lang/String;)Z

    move-result v4

    .line 135
    :goto_0
    return v4

    .line 115
    :cond_1
    const-string v5, "intent://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    const/4 v5, 0x1

    :try_start_0
    invoke-static {p2, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 118
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 119
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 120
    .local v1, "existPackage":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 121
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {v5, v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1    # "existPackage":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 123
    .restart local v1    # "existPackage":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "marketIntent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "market://details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 125
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 124
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
