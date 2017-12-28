.class public Lcom/android/launcher3/widget/view/WidgetItemFolderView;
.super Lcom/android/launcher3/widget/view/WidgetItemView;
.source "WidgetItemFolderView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetFolderView"


# instance fields
.field private mArrowBtn:Landroid/widget/ImageView;

.field private mCountView:Landroid/widget/TextView;

.field private mPreview1:Landroid/widget/ImageView;

.field private mPreview2:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetItemView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/view/WidgetItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/view/WidgetItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method private setTalkbackDescription(Ljava/lang/String;I)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "folder":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    :cond_0
    move-object p1, v0

    .line 108
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    return-void

    .line 96
    :cond_2
    const-string v1, ""

    .line 97
    .local v1, "titleEnd":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 104
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected applyTitle(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mTitle:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 81
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mTitle:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 82
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->setTalkbackDescription(Ljava/lang/String;I)V

    .line 84
    return-void

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public changeColorForBg(Z)V
    .locals 3
    .param p1, "whiteBg"    # Z

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mTitle:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mCountView:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mArrowBtn:Landroid/widget/ImageView;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    .line 199
    if-eqz p1, :cond_0

    const v0, 0x7f0200bb

    .line 201
    .local v0, "bgDrawable":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mPreview1:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 202
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mPreview2:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 203
    return-void

    .line 199
    .end local v0    # "bgDrawable":I
    :cond_0
    const v0, 0x7f0200ba

    goto :goto_0
.end method

.method protected getPreviewImageHeight()I
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getPreviewImageWidth()I
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWidgetFolderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadPreview(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;Ljava/util/List;II)Ljava/lang/Object;
    .locals 6
    .param p1, "jc"    # Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, "folderBitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 122
    invoke-interface {p1}, Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 124
    const/4 v1, 0x0

    .line 131
    .end local v1    # "folderBitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    :cond_0
    return-object v1

    .line 127
    .restart local v1    # "folderBitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 128
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getProviderInfo()Ljava/lang/Object;

    move-result-object v3

    .line 127
    invoke-virtual {v4, v5, v3, p3, p4}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->generatePreview(Lcom/android/launcher3/Launcher;Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->onFinishInflate()V

    .line 45
    const v0, 0x7f110108

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mTitle:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f110109

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mCountView:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f11010c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mPreview1:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f11010d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mPreview2:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f11010a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mArrowBtn:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mArrowBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 51
    const v0, 0x7f11010b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mUninstallIcon:Landroid/widget/ImageView;

    .line 52
    return-void
.end method

.method protected postToSetPreview(Ljava/lang/Object;II)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 137
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->setWidgetFolderImage(Ljava/util/ArrayList;)V

    .line 138
    return-void
.end method

.method protected prepareUninstallEnter(Z)V
    .locals 2
    .param p1, "isSystemApp"    # Z

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mArrowBtn:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mArrowBtn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected prepareUninstallExit(Z)V
    .locals 2
    .param p1, "isSystemApp"    # Z

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mArrowBtn:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mArrowBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public resetToRecycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-super {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->resetToRecycle()V

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mPreview1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mPreview2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    return-void
.end method

.method public setWidgetFolderImage(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "previews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_1

    .line 56
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 57
    .local v0, "preview1":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mPreview1:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-direct {v3, v0}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 61
    .local v1, "preview2":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 62
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mPreview2:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-direct {v3, v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .end local v0    # "preview1":Landroid/graphics/Bitmap;
    .end local v1    # "preview2":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method protected startUninstallExitAnimation()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->startUninstallExitAnimation()V

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mArrowBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mArrowBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mUninstallEnterIconAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected supportLongClick()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method protected uninstallExitIconAnimationEnd()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->uninstallExitIconAnimationEnd()V

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mArrowBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;->mArrowBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :cond_0
    return-void
.end method
