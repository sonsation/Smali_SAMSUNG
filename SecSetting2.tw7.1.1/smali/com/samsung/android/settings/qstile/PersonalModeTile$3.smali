.class Lcom/samsung/android/settings/qstile/PersonalModeTile$3;
.super Ljava/lang/Object;
.source "PersonalModeTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/qstile/PersonalModeTile;->startPersonalModeService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/PersonalModeTile;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/PersonalModeTile;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/qstile/PersonalModeTile;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile$3;->this$0:Lcom/samsung/android/settings/qstile/PersonalModeTile;

    iput-object p2, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 223
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 224
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/settings/qstile/PersonalModeTile$3$1;

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile$3;->val$intent:Landroid/content/Intent;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/qstile/PersonalModeTile$3$1;-><init>(Lcom/samsung/android/settings/qstile/PersonalModeTile$3;Landroid/content/Intent;)V

    .line 232
    const-wide/16 v2, 0x1f4

    .line 224
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    return-void
.end method
