.class Lcom/android/launcher3/home/ZeroPageController$5;
.super Ljava/lang/Object;
.source "ZeroPageController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ZeroPageController;->createCustomZeroPage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;

.field final synthetic val$zeroPageSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;Landroid/widget/Switch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$5;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iput-object p2, p0, Lcom/android/launcher3/home/ZeroPageController$5;->val$zeroPageSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$5;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->access$500(Lcom/android/launcher3/home/ZeroPageController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$5;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController$5;->val$zeroPageSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->access$1800(Lcom/android/launcher3/home/ZeroPageController;Landroid/widget/Switch;Z)V

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$5;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$5;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->startZeroPage()V

    goto :goto_0
.end method
