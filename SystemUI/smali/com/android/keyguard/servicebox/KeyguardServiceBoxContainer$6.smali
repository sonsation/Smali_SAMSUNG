.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 471
    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get0()[Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get0()[Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 471
    if-nez v1, :cond_0

    .line 473
    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get0()[Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 471
    if-eqz v1, :cond_2

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 475
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 470
    :cond_1
    :goto_0
    return-void

    .line 476
    :cond_2
    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get0()[Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get11(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->getServiceBoxSharePageName()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "settingPkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get5(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v1

    :goto_1
    invoke-static {v2, v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap8(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
