.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SeslCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager$1;->this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager$1;->this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->dispatchTimeChanged()V

    .line 1473
    return-void
.end method
