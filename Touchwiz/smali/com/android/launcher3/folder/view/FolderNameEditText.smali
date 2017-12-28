.class public Lcom/android/launcher3/folder/view/FolderNameEditText;
.super Landroid/widget/EditText;
.source "FolderNameEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;
    }
.end annotation


# instance fields
.field private mBackupKeyListener:Landroid/text/method/KeyListener;

.field private mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 98
    if-eqz p1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mBackupKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mBackupKeyListener:Landroid/text/method/KeyListener;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 110
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 111
    return-void

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    .line 104
    .local v0, "kl":Landroid/text/method/KeyListener;
    if-eqz v0, :cond_2

    .line 105
    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mBackupKeyListener:Landroid/text/method/KeyListener;

    .line 107
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 63
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    invoke-interface {v0}, Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;->onPreImeBackKey()Z

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    if-eqz v0, :cond_0

    .line 75
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;->onKeyUp(ILandroid/view/KeyEvent;)V

    .line 83
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 77
    :cond_1
    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderNameEditText;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;->onKeyUp(ILandroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 88
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    invoke-interface {v0}, Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;->onLayoutUpdated()V

    .line 93
    :cond_0
    return-void
.end method

.method setOnEventListener(Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    .line 58
    return-void
.end method
