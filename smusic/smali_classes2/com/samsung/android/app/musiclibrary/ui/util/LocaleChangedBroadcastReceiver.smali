.class public Lcom/samsung/android/app/musiclibrary/ui/util/LocaleChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocaleChangedBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->cleanMakeTimeStringCache()V

    .line 15
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->onLocaleChanged()V

    .line 16
    return-void
.end method
