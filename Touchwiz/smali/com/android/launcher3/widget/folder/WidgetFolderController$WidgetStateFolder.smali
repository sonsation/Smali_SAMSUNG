.class final Lcom/android/launcher3/widget/folder/WidgetFolderController$WidgetStateFolder;
.super Lcom/android/launcher3/widget/controller/WidgetState;
.source "WidgetFolderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/folder/WidgetFolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WidgetStateFolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleBar"    # Landroid/view/View;

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetState;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 339
    return-void
.end method


# virtual methods
.method public enter(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "fromState"    # Lcom/android/launcher3/widget/controller/WidgetState;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 343
    return-void
.end method

.method public exit(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "toState"    # Lcom/android/launcher3/widget/controller/WidgetState;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 347
    return-void
.end method

.method public getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->FOLDER:Lcom/android/launcher3/widget/controller/WidgetState$State;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public onWidgetItemClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 351
    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemSingleView;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/folder/WidgetFolderController$WidgetStateFolder;->clickNotAllowed(Landroid/view/View;)V

    .line 354
    :cond_0
    return-void
.end method

.method public onWidgetItemLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 358
    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemSingleView;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController$WidgetStateFolder;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController$WidgetStateFolder;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->startDrag(Landroid/view/View;)V

    .line 361
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocus()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method
