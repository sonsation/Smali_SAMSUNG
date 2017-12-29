.class public final Lcom/samsung/android/settings/guide/HelpHubTextView;
.super Landroid/widget/TextView;
.source "HelpHubTextView.java"


# static fields
.field private static final ICON_POINTER_PS_NUM:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "%1$s"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "%2$s"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "%3$s"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "%4$s"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "%5$s"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/guide/HelpHubTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct/range {p0 .. p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/guide/HelpHubTextView;->mContext:Landroid/content/Context;

    .line 56
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/settings/R$styleable;->HelpHubTextView:[I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 59
    .local v16, "ta":Landroid/content/res/TypedArray;
    const/16 v17, 0xe

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 60
    .local v12, "iconsArrayId":I
    const/16 v17, 0xf

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 61
    .local v7, "iconId":I
    const/16 v17, 0x10

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 62
    .local v11, "iconId_vzw":I
    const/16 v17, 0x11

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 63
    .local v9, "iconId_spr":I
    const/16 v17, 0x12

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 64
    .local v8, "iconId_att":I
    const/16 v17, 0x13

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 66
    .local v10, "iconId_usc":I
    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 67
    .local v14, "stringArrayId":I
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 69
    .local v15, "stringId":I
    const/4 v5, 0x0

    .line 71
    .local v5, "bTypeString":Z
    const-string/jumbo v17, "Settings-HelpHubTextView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "iconId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-lez v14, :cond_2

    .line 75
    const/4 v5, 0x1

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 77
    .local v13, "iconsTypedArray":Landroid/content/res/TypedArray;
    if-eqz v13, :cond_1

    .line 78
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 79
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 83
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    .end local v13    # "iconsTypedArray":Landroid/content/res/TypedArray;
    :cond_1
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    if-eqz v5, :cond_a

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/guide/HelpHubTextView;->applyStringWithString()V

    .line 53
    :goto_2
    return-void

    .line 85
    :cond_2
    if-lez v15, :cond_3

    .line 86
    const/4 v5, 0x1

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    :cond_3
    if-lez v12, :cond_5

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 91
    .restart local v13    # "iconsTypedArray":Landroid/content/res/TypedArray;
    if-eqz v13, :cond_1

    .line 92
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 93
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_4

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 97
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 99
    .end local v13    # "iconsTypedArray":Landroid/content/res/TypedArray;
    :cond_5
    if-lez v7, :cond_1

    .line 100
    if-eqz v11, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->isVZW()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_6
    if-eqz v9, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->isSPR()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_7
    if-eqz v8, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->isATT()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 106
    :cond_8
    if-eqz v10, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->isUSC()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 109
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 118
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/guide/HelpHubTextView;->applyStringWithIcon()V

    goto/16 :goto_2
.end method

.method private applyStringWithIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 211
    const-string/jumbo v3, "Settings-HelpHubTextView"

    const-string/jumbo v4, "applyStringWithIcon() :: message is Null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 215
    :cond_0
    const-string/jumbo v3, "%s"

    const-string/jumbo v4, "\ufffc"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 217
    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_3

    .line 219
    const-string/jumbo v3, "\ufffc"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 222
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 221
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void

    .line 230
    .end local v0    # "i":I
    :cond_3
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 231
    .local v2, "msg_with_icon":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_7

    .line 232
    const-string/jumbo v3, "\ufffc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 233
    const-string/jumbo v4, "\ufffc"

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/samsung/android/settings/guide/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    .line 245
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 246
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/guide/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const-string/jumbo v3, "Settings-HelpHubTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "applyStringWithIcon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5
    return-void

    .line 234
    :cond_6
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 235
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v5

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/samsung/android/settings/guide/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    goto :goto_1

    .line 238
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 239
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 240
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v0

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/samsung/android/settings/guide/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    .line 238
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private applyStringWithString()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 178
    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 179
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 182
    const-string/jumbo v3, "%s"

    const-string/jumbo v4, "\ufffc"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 186
    return-void

    .line 187
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 188
    const-string/jumbo v3, "\ufffc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    const-string/jumbo v4, "\ufffc"

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 202
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_3
    return-void

    .line 190
    :cond_4
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v5

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 194
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 195
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 196
    sget-object v3, Lcom/samsung/android/settings/guide/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v0

    iget-object v3, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 194
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;
    .locals 11
    .param p1, "POINTER"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "ss"    # Landroid/text/SpannableString;
    .param p4, "icon_resid"    # I

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 252
    iget-object v6, p0, Lcom/samsung/android/settings/guide/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 253
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 255
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, p4, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 257
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 258
    .local v5, "value_1dp":F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_0

    .line 259
    const-string/jumbo v6, "Settings-HelpHubTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Dummy image is used. Please apply correct resource. Resource name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    return-object p3

    .line 262
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "value_1dp":F
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Settings-HelpHubTextView"

    const-string/jumbo v7, "Cannot find resource"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    return-object p3

    .line 268
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "value_1dp":F
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v0, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 269
    new-instance v4, Lcom/samsung/android/settings/guide/HelpHubImageSpan;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/guide/HelpHubImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 270
    .local v4, "span":Lcom/samsung/android/settings/guide/HelpHubImageSpan;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v6, v6, v9

    if-ltz v6, :cond_1

    const v6, 0x7f0e002a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 271
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    iput v6, v4, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->fontScale:F

    .line 273
    :cond_2
    const v6, 0x7f0a0817

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iput v6, v4, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->imageSideMargin:F

    .line 274
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 275
    .local v2, "iconIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    const/16 v7, 0x11

    invoke-virtual {p3, v4, v2, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 276
    return-object p3
.end method

.method public static isATT()Z
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "sales_code":Ljava/lang/String;
    const-string/jumbo v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const/4 v1, 0x1

    return v1

    .line 142
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isSPR()Z
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "sales_code":Ljava/lang/String;
    const-string/jumbo v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 135
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isUSC()Z
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "sales_code":Ljava/lang/String;
    const-string/jumbo v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x1

    return v1

    .line 149
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isVZW()Z
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/samsung/android/settings/guide/HelpHubTextView;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "sales_code":Ljava/lang/String;
    const-string/jumbo v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const/4 v1, 0x1

    return v1

    .line 128
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 157
    const-string/jumbo v1, ""

    .line 159
    .local v1, "sales_code":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Setting_ConfigOpMenuStructure"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string/jumbo v2, "Settings-HelpHubTextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readSalesCode(): menutreeCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    :try_start_0
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    :cond_0
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Settings-HelpHubTextView"

    const-string/jumbo v3, "readSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
