.class Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;
.super Ljava/lang/Object;
.source "AvailableVirtualKeyboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;
    .param p2, "val$activity"    # Landroid/app/Activity;
    .param p3, "val$context"    # Landroid/content/Context;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->-wrap0(Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;Landroid/content/Context;)V

    .line 88
    :cond_0
    return-void
.end method
