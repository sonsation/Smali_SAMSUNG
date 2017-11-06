.class public Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
.super Ljava/lang/Object;
.source "SeslAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
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
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 324
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    .line 325
    iput p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->mTheme:I

    .line 326
    return-void
.end method


# virtual methods
.method public create()Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;
    .locals 3

    .prologue
    .line 931
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 932
    .local v0, "dialog":Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->apply(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V

    .line 933
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->setCancelable(Z)V

    .line 934
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 935
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 938
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 939
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 942
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 610
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 611
    return-object p0
.end method

.method public setCancelable(Z)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 529
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCancelable:Z

    .line 530
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 629
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 630
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 631
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 379
    return-object p0
.end method

.method public setIcon(I)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 410
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIconId:I

    .line 411
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 426
    return-object p0
.end method

.method public setIconAttribute(I)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 439
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 440
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 441
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIconId:I

    .line 442
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mForceInverseBackground:Z

    .line 907
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 582
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 583
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 594
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 595
    return-object p0
.end method

.method public setMessage(I)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 388
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 389
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 399
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 655
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 656
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCheckedItems:[Z

    .line 657
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsMultiChoice:Z

    .line 658
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 709
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p4, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 710
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 711
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsMultiChoice:Z

    .line 713
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 680
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 681
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 682
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCheckedItems:[Z

    .line 683
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsMultiChoice:Z

    .line 684
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 480
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 481
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 493
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 494
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 506
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 507
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 519
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 520
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 551
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 561
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 819
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 571
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 454
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 455
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 467
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 468
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 916
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 734
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 735
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCheckedItem:I

    .line 736
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    .line 737
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 759
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p4, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 760
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCheckedItem:I

    .line 761
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    .line 763
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 804
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 805
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCheckedItem:I

    .line 806
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    .line 807
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 782
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 783
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCheckedItem:I

    .line 784
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    .line 785
    return-object p0
.end method

.method public setTitle(I)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 347
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 348
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 358
    return-object p0
.end method

.method public setView(I)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 831
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mView:Landroid/view/View;

    .line 832
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewLayoutResId:I

    .line 833
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 834
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 852
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mView:Landroid/view/View;

    .line 853
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewLayoutResId:I

    .line 854
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 855
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 884
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mView:Landroid/view/View;

    .line 885
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewLayoutResId:I

    .line 886
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 887
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput p2, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingLeft:I

    .line 888
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput p3, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingTop:I

    .line 889
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput p4, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingRight:I

    .line 890
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput p5, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingBottom:I

    .line 891
    return-object p0
.end method

.method public show()Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->create()Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

    move-result-object v0

    .line 957
    .local v0, "dialog":Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->show()V

    .line 958
    return-object v0
.end method
