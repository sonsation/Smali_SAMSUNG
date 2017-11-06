.class public Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;
.super Landroid/webkit/WebView;
.source "SocialAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brickred/socialauth/android/SocialAuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomWebView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;


# direct methods
.method public constructor <init>(Lorg/brickred/socialauth/android/SocialAuthDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 548
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    .line 549
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 550
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 563
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    goto :goto_0
.end method
