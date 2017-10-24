.class Landroid/widget/Editor$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private mHandleHeight:I

.field private final mHasSelection:Z

.field private final mSelectionBounds:Landroid/graphics/RectF;

.field private final mSelectionPath:Landroid/graphics/Path;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Z)V
    .locals 4
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "hasSelection"    # Z

    .prologue
    .line 4062
    iput-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 4056
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 4057
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 4063
    iput-boolean p2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    .line 4064
    iget-boolean v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v2, :cond_2

    .line 4065
    invoke-virtual {p1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    .line 4066
    .local v1, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-get0(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4068
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-wrap0(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 4069
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-wrap1(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 4070
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 4073
    :cond_0
    invoke-static {p1}, Landroid/widget/Editor;->-get9(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 4074
    invoke-static {p1}, Landroid/widget/Editor;->-get10(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 4072
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 4062
    .end local v1    # "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_1
    :goto_0
    return-void

    .line 4076
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    .line 4077
    .local v0, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v0, :cond_1

    .line 4078
    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->-wrap0(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    .line 4079
    invoke-static {p1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    goto :goto_0
.end method

.method private getCustomCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 4119
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_0

    .line 4120
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 4119
    :goto_0
    return-object v0

    .line 4121
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method private populateMenuWithItems(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4126
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4127
    const v4, 0x1020066

    .line 4128
    const v5, 0x10408c6

    .line 4127
    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 4129
    iget-object v5, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10809f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4127
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 4132
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4133
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v0, v1

    .line 4134
    .local v0, "order":I
    :goto_0
    const v4, 0x1020020

    .line 4135
    const v5, 0x1040003

    .line 4134
    invoke-interface {p1, v7, v4, v0, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 4136
    iget-object v5, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10809f5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4134
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 4137
    const/16 v5, 0x78

    .line 4134
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4141
    .end local v0    # "order":I
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4142
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v2

    .line 4143
    .restart local v0    # "order":I
    :goto_1
    const v2, 0x1020021

    .line 4144
    const v4, 0x1040001

    .line 4143
    invoke-interface {p1, v7, v2, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 4145
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10809f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4143
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    .line 4146
    const/16 v4, 0x63

    .line 4143
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4150
    .end local v0    # "order":I
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->canPaste()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4151
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v3

    .line 4152
    .restart local v0    # "order":I
    :goto_2
    const v2, 0x1020022

    .line 4153
    const v3, 0x104000b

    .line 4152
    invoke-interface {p1, v7, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 4154
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10809f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4152
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    .line 4155
    const/16 v3, 0x76

    .line 4152
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4159
    .end local v0    # "order":I
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canShare()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4160
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x5

    .line 4161
    .restart local v0    # "order":I
    :goto_3
    const v1, 0x1020035

    .line 4162
    const v2, 0x104049b

    .line 4161
    invoke-interface {p1, v7, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4163
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10809fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4161
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4167
    .end local v0    # "order":I
    :cond_4
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canClipboard()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4168
    const v1, 0x1020064

    const/4 v2, 0x6

    .line 4169
    const v3, 0x1040628

    .line 4168
    invoke-interface {p1, v7, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4170
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10809f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4168
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4174
    :cond_5
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 4176
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4177
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 4181
    :cond_6
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4182
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canDictionary()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4183
    const v1, 0x1020062

    const/4 v2, 0x7

    .line 4184
    const v3, 0x10407e6

    .line 4183
    invoke-interface {p1, v7, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4185
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10809f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4183
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4190
    :cond_7
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canWebSearch()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4191
    const v1, 0x1020541

    const/16 v2, 0x9

    .line 4192
    const v3, 0x104049d

    .line 4191
    invoke-interface {p1, v7, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4193
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10809fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4191
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4124
    :cond_8
    return-void

    :cond_9
    move v0, v2

    .line 4133
    goto/16 :goto_0

    :cond_a
    move v0, v3

    .line 4142
    goto/16 :goto_1

    .line 4151
    :cond_b
    const/4 v0, 0x5

    goto/16 :goto_2

    .line 4160
    :cond_c
    const/4 v0, 0x7

    goto/16 :goto_3
.end method

.method private updateReplaceItem(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x1020034

    .line 4228
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4229
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 4230
    .local v0, "canReplace":Z
    :goto_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 4231
    .local v1, "replaceItemExists":Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_5

    .line 4235
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 4236
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 4227
    :cond_1
    :goto_2
    return-void

    .line 4229
    .end local v0    # "canReplace":Z
    .end local v1    # "replaceItemExists":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "canReplace":Z
    goto :goto_0

    .line 4228
    .end local v0    # "canReplace":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "canReplace":Z
    goto :goto_0

    .line 4230
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "replaceItemExists":Z
    goto :goto_1

    .line 4232
    :cond_5
    const/4 v2, 0x0

    const/16 v3, 0x9

    .line 4233
    const v4, 0x1040371

    .line 4232
    invoke-interface {p1, v2, v5, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 4234
    const/4 v3, 0x1

    .line 4232
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2
.end method

.method private updateSelectAllItem(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x102001f

    .line 4214
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v0

    .line 4215
    .local v0, "canSelectAll":Z
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 4216
    .local v2, "selectAllItemExists":Z
    :goto_0
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 4217
    .local v1, "order":I
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v2, :cond_4

    .line 4222
    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 4223
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 4213
    :cond_1
    :goto_2
    return-void

    .line 4215
    .end local v1    # "order":I
    .end local v2    # "selectAllItemExists":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "selectAllItemExists":Z
    goto :goto_0

    .line 4216
    :cond_3
    const/16 v1, 0x8

    .restart local v1    # "order":I
    goto :goto_1

    .line 4218
    :cond_4
    const/4 v3, 0x0

    .line 4219
    const v4, 0x104000d

    .line 4218
    invoke-interface {p1, v3, v5, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 4220
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10809f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4218
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    .line 4221
    const/4 v4, 0x1

    .line 4218
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4242
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "CPMS"

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4243
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v1, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4244
    return v3

    .line 4246
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 4247
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4248
    return v3

    .line 4250
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    return v1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4086
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 4087
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 4088
    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 4089
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    .line 4091
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 4092
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    .line 4093
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4095
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 4096
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 4095
    invoke-static {v1, v2}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 4097
    return v3

    .line 4101
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canProcessText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4102
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v1, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeMenu(Landroid/view/Menu;)V

    .line 4105
    :cond_1
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4106
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v1

    if-gt v1, v2, :cond_3

    .line 4107
    return v3

    .line 4109
    :cond_3
    iget-boolean v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4112
    :cond_4
    :goto_0
    return v2

    .line 4110
    :cond_5
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    goto :goto_0

    .line 4114
    :cond_6
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    .line 4256
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iput-object v2, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 4257
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 4258
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    .line 4259
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4262
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4268
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 4269
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 4268
    invoke-static {v1, v2}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 4272
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4273
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 4276
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/widget/Editor;->-set1(Landroid/widget/Editor;Z)Z

    .line 4277
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4279
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$MagnifierView;->stopMagnifier()V

    .line 4254
    :cond_3
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 4285
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    if-nez v11, :cond_1

    .line 4286
    :cond_0
    invoke-super/range {p0 .. p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4287
    return-void

    .line 4290
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x105029b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 4291
    .local v6, "popupTopMargin":I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x105029c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 4293
    .local v5, "popupBottomMargin":I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    if-eq v11, v12, :cond_2

    .line 4295
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 4296
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 4297
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 4296
    invoke-virtual {v11, v12, v13, v14}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 4298
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4299
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->top:F

    int-to-float v13, v5

    sub-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/RectF;->top:F

    .line 4300
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    add-int/2addr v13, v6

    int-to-float v13, v13

    add-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/RectF;->bottom:F

    .line 4326
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v9

    .line 4327
    .local v9, "textHorizontalOffset":I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    .line 4329
    .local v10, "textVerticalOffset":I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    int-to-float v12, v9

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v11, v12

    .line 4330
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    int-to-float v13, v10

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    .line 4331
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    int-to-float v14, v9

    add-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    .line 4332
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    int-to-float v15, v10

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 4328
    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 4284
    return-void

    .line 4301
    .end local v9    # "textHorizontalOffset":I
    .end local v10    # "textVerticalOffset":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget v11, v11, Landroid/widget/Editor;->mCursorCount:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 4304
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4305
    .local v2, "firstCursorBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 4306
    .local v8, "secondCursorBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 4307
    iget v12, v2, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    .line 4308
    iget v13, v2, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    .line 4309
    iget v14, v2, Landroid/graphics/Rect;->right:I

    iget v15, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v14, v14

    .line 4310
    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 4311
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    move/from16 v16, v0

    .line 4310
    add-int v15, v15, v16

    int-to-float v15, v15

    .line 4306
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 4314
    .end local v2    # "firstCursorBounds":Landroid/graphics/Rect;
    .end local v8    # "secondCursorBounds":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 4315
    .local v3, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 4316
    .local v4, "line":I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 4317
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    .line 4316
    const/4 v13, 0x0

    invoke-static {v11, v13, v12}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    move-result v11

    int-to-float v7, v11

    .line 4319
    .local v7, "primaryHorizontal":F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 4321
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    sub-int/2addr v12, v5

    int-to-float v12, v12

    .line 4322
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    iget v13, v13, Landroid/widget/TextView;->mCursorWidth:I

    int-to-float v13, v13

    add-float/2addr v13, v7

    .line 4323
    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v3, v14}, Landroid/text/Layout;->getLineTop(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    add-int/2addr v14, v15

    add-int/2addr v14, v6

    int-to-float v14, v14

    .line 4319
    invoke-virtual {v11, v7, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 4201
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 4202
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4203
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 4206
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 4207
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_1

    .line 4208
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 4210
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
