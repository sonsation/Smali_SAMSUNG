.class public abstract Lcom/android/launcher3/widget/view/WidgetItemView;
.super Landroid/widget/LinearLayout;
.source "WidgetItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;,
        Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetItemView"


# instance fields
.field protected mDimensionsFormatString:Ljava/lang/String;

.field private mHighlightColor:I

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field protected mLoadTask:Lcom/android/launcher3/util/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/threadpool/Future",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

.field protected mTalkbackDimen:Ljava/lang/String;

.field private final mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

.field protected mUninstallEnterIconAnimation:Landroid/view/animation/Animation;

.field protected mUninstallExitIconAnimation:Landroid/view/animation/Animation;

.field protected mUninstallIcon:Landroid/widget/ImageView;

.field protected mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f05000d

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallEnterIconAnimation:Landroid/view/animation/Animation;

    .line 89
    const v1, 0x7f05000c

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallExitIconAnimation:Landroid/view/animation/Animation;

    .line 90
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallExitIconAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetItemView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/view/WidgetItemView$1;-><init>(Lcom/android/launcher3/widget/view/WidgetItemView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 105
    const v1, 0x7f0901eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mDimensionsFormatString:Ljava/lang/String;

    .line 106
    const v1, 0x7f0900cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mTalkbackDimen:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setHapticFeedbackEnabled(Z)V

    .line 108
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setWillNotDraw(Z)V

    .line 109
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setClipToPadding(Z)V

    .line 112
    const v1, 0x7f0e0040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mHighlightColor:I

    .line 114
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getThreadPool()Lcom/android/launcher3/util/threadpool/ThreadPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

    .line 115
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 116
    invoke-static {}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->getInstance()Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    .line 117
    return-void
.end method


# virtual methods
.method protected applyCellSpan()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public applyHighlightTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "highlight"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v5

    .line 217
    .local v5, "name":Landroid/widget/TextView;
    const/4 v4, -0x1

    .line 218
    .local v4, "indexOf":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 219
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 221
    .local v2, "highlightStrLength":I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 222
    .local v1, "highLightText":Landroid/text/Spannable;
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v7, p1, v8}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v3

    .line 223
    .local v3, "iQueryForIndian":[C
    if-eqz v3, :cond_1

    .line 224
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    .line 225
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 226
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 231
    .end local v6    # "s":Ljava/lang/String;
    :goto_0
    const/4 v7, -0x1

    if-le v4, v7, :cond_0

    .line 232
    :try_start_0
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget v8, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mHighlightColor:I

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v8, v4, v2

    const/4 v9, 0x0

    invoke-interface {v1, v7, v4, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-void

    .line 228
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "WidgetItemView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "highLightText<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 236
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,highlight<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 237
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,indexOf = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "highlightStrLength = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 235
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 241
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget v8, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mHighlightColor:I

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 242
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v8

    .line 241
    invoke-interface {v1, v7, v4, v8, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method protected final applyTileAndSpan(Ljava/lang/String;)V
    .locals 5
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 166
    .local v1, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    instance-of v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;

    .line 167
    .local v0, "folder":Z
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyTitle(Ljava/lang/String;)V

    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {p0, v2, p1}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyHighlightTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyCellSpan()V

    .line 174
    return-void

    .line 167
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract applyTitle(Ljava/lang/String;)V
.end method

.method public changeColorForBg(Z)V
    .locals 0
    .param p1, "whiteBg"    # Z

    .prologue
    .line 347
    return-void
.end method

.method public changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V
    .locals 1
    .param p1, "state"    # Lcom/android/launcher3/widget/controller/WidgetState$State;
    .param p2, "anim"    # Z

    .prologue
    .line 339
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/controller/WidgetState$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/view/WidgetItemView;->exitUninstallMode(Z)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/controller/WidgetState$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/view/WidgetItemView;->enterUninstallMode(Z)V

    goto :goto_0
.end method

.method public enterUninstallMode(Z)V
    .locals 7
    .param p1, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 133
    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 134
    .local v0, "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->uninstallable(Landroid/content/Context;)Z

    move-result v2

    .line 135
    .local v2, "uninstallable":Z
    if-nez v2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setTalkbackDescription(ZZ)V

    .line 136
    if-eqz v2, :cond_0

    .line 137
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    const-string v6, "\u00a0"

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->startUninstallEnterAnimation()V

    .line 143
    :cond_0
    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetItemView;->prepareUninstallEnter(Z)V

    .line 145
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .end local v2    # "uninstallable":Z
    :cond_1
    return-void

    .restart local v0    # "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .restart local v2    # "uninstallable":Z
    :cond_2
    move v3, v5

    .line 135
    goto :goto_0

    :cond_3
    move v4, v5

    .line 143
    goto :goto_1
.end method

.method public exitUninstallMode(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 149
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 150
    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 151
    .local v0, "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->uninstallable(Landroid/content/Context;)Z

    move-result v2

    .line 152
    .local v2, "uninstallable":Z
    if-nez v2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setTalkbackDescription(ZZ)V

    .line 153
    if-eqz v2, :cond_0

    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->startUninstallExitAnimation()V

    .line 158
    :cond_0
    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetItemView;->prepareUninstallExit(Z)V

    .line 159
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 162
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .end local v2    # "uninstallable":Z
    :cond_1
    return-void

    .restart local v0    # "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .restart local v2    # "uninstallable":Z
    :cond_2
    move v3, v5

    .line 152
    goto :goto_0

    :cond_3
    move v4, v5

    .line 158
    goto :goto_1
.end method

.method protected abstract getPreviewImageHeight()I
.end method

.method protected abstract getPreviewImageWidth()I
.end method

.method protected abstract getTitleTextView()Landroid/widget/TextView;
.end method

.method public getWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 250
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    .line 251
    .local v0, "ret":Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 252
    return-object v0
.end method

.method protected abstract loadPreview(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;Ljava/util/List;II)Ljava/lang/Object;
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
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract postToSetPreview(Ljava/lang/Object;II)V
.end method

.method protected prepareUninstallEnter(Z)V
    .locals 0
    .param p1, "isSystemApp"    # Z

    .prologue
    .line 183
    return-void
.end method

.method protected prepareUninstallExit(Z)V
    .locals 0
    .param p1, "isSystemApp"    # Z

    .prologue
    .line 186
    return-void
.end method

.method public requestPreview(Lcom/android/launcher3/widget/view/WidgetPageLayout;)V
    .locals 5
    .param p1, "layout"    # Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

    new-instance v1, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getPreviewImageWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getPreviewImageHeight()I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;-><init>(Lcom/android/launcher3/widget/view/WidgetItemView;Ljava/util/List;II)V

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getPreviewImageWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getPreviewImageHeight()I

    move-result v4

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;-><init>(Lcom/android/launcher3/widget/view/WidgetItemView;Lcom/android/launcher3/widget/view/WidgetPageLayout;II)V

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/threadpool/ThreadPool;->submit(Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;)Lcom/android/launcher3/util/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    .line 287
    return-void
.end method

.method protected resetToRecycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v0}, Lcom/android/launcher3/util/threadpool/Future;->cancel()V

    .line 271
    iput-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    .line 273
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetItemView;->setNextFocusLeftId(I)V

    .line 274
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetItemView;->setNextFocusRightId(I)V

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemView;->exitUninstallMode(Z)V

    .line 276
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetItemView;->setTag(Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method protected setTalkbackDescription(ZZ)V
    .locals 5
    .param p1, "isUninstall"    # Z
    .param p2, "isSystemApp"    # Z

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 122
    .local v0, "name":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "nameDescription":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    .end local v1    # "nameDescription":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setWidgets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    return-void
.end method

.method protected startUninstallEnterAnimation()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallEnterIconAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    :cond_0
    return-void
.end method

.method protected startUninstallExitAnimation()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallExitIconAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    :cond_0
    return-void
.end method

.method protected supportLongClick()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method protected uninstallExitIconAnimationEnd()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    :cond_0
    return-void
.end method
