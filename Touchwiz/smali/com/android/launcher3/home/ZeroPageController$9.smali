.class Lcom/android/launcher3/home/ZeroPageController$9;
.super Ljava/lang/Object;
.source "ZeroPageController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ZeroPageController;->showZeroPageDownloadDialog(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;

.field final synthetic val$isSwitch:Z

.field final synthetic val$zeroPageSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;ZLandroid/widget/Switch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 1520
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$9;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iput-boolean p2, p0, Lcom/android/launcher3/home/ZeroPageController$9;->val$isSwitch:Z

    iput-object p3, p0, Lcom/android/launcher3/home/ZeroPageController$9;->val$zeroPageSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1523
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1524
    iget-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController$9;->val$isSwitch:Z

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$9;->val$zeroPageSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1527
    :cond_0
    return-void
.end method
