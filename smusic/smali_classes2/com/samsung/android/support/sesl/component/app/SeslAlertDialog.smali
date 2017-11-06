.class public Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;
.super Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;
.source "SeslAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    }
.end annotation


# static fields
.field static final LAYOUT_HINT_NONE:I = 0x0

.field static final LAYOUT_HINT_SIDE:I = 0x1


# instance fields
.field final mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 90
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 100
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    .line 101
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->setCancelable(Z)V

    .line 107
    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 108
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resid"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 111
    const/high16 v1, 0x1000000

    if-lt p1, v1, :cond_0

    .line 116
    .end local p1    # "resid":I
    :goto_0
    return p1

    .line 114
    .restart local p1    # "resid":I
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 115
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 116
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->installContent()V

    .line 260
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 225
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 210
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 1
    .param p1, "layoutHint"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setButtonPanelLayoutHint(I)V

    .line 195
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 156
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setIcon(I)V

    .line 234
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 243
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 251
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 252
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 253
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setIcon(I)V

    .line 254
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setView(Landroid/view/View;IIII)V

    .line 188
    return-void
.end method
