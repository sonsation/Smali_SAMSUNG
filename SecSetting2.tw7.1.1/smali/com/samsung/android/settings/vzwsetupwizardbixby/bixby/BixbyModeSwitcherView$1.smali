.class Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView$1;
.super Ljava/lang/Object;
.source "BixbyModeSwitcherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 45
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getCurrentBixbyMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v0, 0x1

    .line 46
    .local v0, "isBixModeEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {v2, v1}, Lcom/android/settings/Utils;->setCurrentBixbyMode(Landroid/content/Context;I)V

    .line 47
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 44
    return-void

    .line 45
    .end local v0    # "isBixModeEnabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isBixModeEnabled":Z
    goto :goto_0
.end method
