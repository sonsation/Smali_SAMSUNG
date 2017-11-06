.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23$SeslCompatWindowCallbackV23;
.super Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;
.source "SeslCompatDelegateImplV23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeslCompatWindowCallbackV23"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23$SeslCompatWindowCallbackV23;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23$SeslCompatWindowCallbackV23;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    packed-switch p2, :pswitch_data_0

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23$SeslCompatWindowCallbackV23;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
