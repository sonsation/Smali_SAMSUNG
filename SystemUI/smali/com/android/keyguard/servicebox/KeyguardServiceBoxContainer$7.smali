.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$7;
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
    .line 493
    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$7;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 496
    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get1()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get1()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 496
    if-eqz v0, :cond_2

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$7;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 495
    :cond_1
    :goto_0
    return-void

    .line 499
    :cond_2
    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get1()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 500
    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get1()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 499
    if-nez v0, :cond_3

    .line 501
    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get1()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 499
    if-eqz v0, :cond_1

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$7;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    goto :goto_0
.end method
