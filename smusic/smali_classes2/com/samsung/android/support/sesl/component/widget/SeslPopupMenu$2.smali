.class Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$2;
.super Ljava/lang/Object;
.source "SeslPopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mOnDismissListener:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnDismissListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mOnDismissListener:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnDismissListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnDismissListener;->onDismiss(Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;)V

    .line 127
    :cond_0
    return-void
.end method
