.class Lcom/mapps/android/view/AdVideoPlayer$18;
.super Ljava/lang/Object;
.source "AdVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->setloction(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;

.field private final synthetic val$cal:I

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->val$type:Ljava/lang/String;

    iput p3, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->val$cal:I

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1029
    :try_start_0
    const-string v6, "1"

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->val$type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1031
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getTextPx(I)I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1032
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getTextPx(I)I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1033
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v8}, Lcom/mapps/android/view/AdVideoPlayer;->access$40(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1034
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v8}, Lcom/mapps/android/view/AdVideoPlayer;->access$41(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v7

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$41(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v8

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$42(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v9

    add-int/lit8 v9, v9, -0xa

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x64

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 1035
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v8}, Lcom/mapps/android/view/AdVideoPlayer;->access$40(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1036
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v8}, Lcom/mapps/android/view/AdVideoPlayer;->access$41(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v7

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$41(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v8

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$42(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v9

    add-int/lit8 v9, v9, -0xa

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x64

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 1038
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v6, v6, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$27(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1039
    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\uad11\uace0 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->val$cal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\ucd08"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1040
    .local v5, "sps":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x3

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1041
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1042
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    .end local v5    # "sps":Landroid/text/SpannableStringBuilder;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1121
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "#000000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1122
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1123
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "#000000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1127
    :cond_1
    :goto_1
    return-void

    .line 1043
    :cond_2
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$27(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1045
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v6, v6, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-eqz v6, :cond_3

    .line 1046
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$43(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 1047
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v6, "\uad11\uace0 \uac74\ub108\ub6f0\uae30"

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1048
    .restart local v5    # "sps":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1049
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1124
    .end local v5    # "sps":Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v2

    .line 1125
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1051
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$44(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v6

    const/16 v7, 0xf

    if-le v6, v7, :cond_4

    .line 1052
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v6, "\uc7a0\uc2dc \ud6c4 \uad11\uace0\uac00 \uc885\ub8cc\ub429\ub2c8\ub2e4"

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1053
    .restart local v5    # "sps":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1054
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1055
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v7, 0x8

    const/16 v8, 0x9

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1056
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1058
    .end local v5    # "sps":Landroid/text/SpannableStringBuilder;
    :cond_4
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v6, v6, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$45(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1060
    :cond_5
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v6, v6, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    if-nez v6, :cond_6

    .line 1061
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$46(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 1062
    :cond_6
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v6, v6, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v7, v7, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    sub-int v4, v6, v7

    .line 1063
    .local v4, "sec":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 1064
    .local v3, "len":I
    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "\ucd08 \ud6c4 \uad11\uace0\uac00 \uc885\ub8cc\ub429\ub2c8\ub2e4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1065
    .restart local v5    # "sps":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v3, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1066
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v7, v3, 0x3

    add-int/lit8 v8, v3, 0x4

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1067
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v7, v3, 0x7

    add-int/lit8 v8, v3, 0x8

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1068
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1072
    .end local v3    # "len":I
    .end local v4    # "sec":I
    .end local v5    # "sps":Landroid/text/SpannableStringBuilder;
    :cond_7
    const-string v6, "2"

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->val$type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1073
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v0, v6

    .line 1074
    .local v0, "adcSize":I
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v1, v6

    .line 1075
    .local v1, "adclSize":I
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->getTextPx(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    if-ne v0, v6, :cond_8

    .line 1076
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v8}, Lcom/mapps/android/view/AdVideoPlayer;->access$42(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v8

    mul-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x64

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v8, v0

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1077
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v8}, Lcom/mapps/android/view/AdVideoPlayer;->access$42(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v8

    mul-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x64

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1078
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v8}, Lcom/mapps/android/view/AdVideoPlayer;->access$40(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v7

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$40(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v8

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$42(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v9

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x64

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1079
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v8}, Lcom/mapps/android/view/AdVideoPlayer;->access$41(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v7

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$41(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v8

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$42(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v9

    add-int/lit8 v9, v9, -0x7

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x64

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 1080
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v8}, Lcom/mapps/android/view/AdVideoPlayer;->access$40(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v7

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$40(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v8

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$42(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v9

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x64

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1081
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v8}, Lcom/mapps/android/view/AdVideoPlayer;->access$41(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v7

    iget-object v8, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$41(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v8

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$42(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v9

    add-int/lit8 v9, v9, -0x7

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x64

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 1082
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1083
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1085
    :cond_8
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v6, v6, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-lez v6, :cond_9

    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$27(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1086
    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\uad11\uace0 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->val$cal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\ucd08"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1087
    .restart local v5    # "sps":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x3

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1088
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1089
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1091
    .end local v5    # "sps":Landroid/text/SpannableStringBuilder;
    :cond_9
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$27(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1092
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v6, v6, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-eqz v6, :cond_a

    .line 1093
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$43(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 1094
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v6, "\uad11\uace0 \uac74\ub108\ub6f0\uae30"

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1095
    .restart local v5    # "sps":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1096
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1098
    .end local v5    # "sps":Landroid/text/SpannableStringBuilder;
    :cond_a
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$44(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v6

    const/16 v7, 0xf

    if-le v6, v7, :cond_b

    .line 1099
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v6, "\uc7a0\uc2dc \ud6c4 \uad11\uace0\uac00 \uc885\ub8cc\ub429\ub2c8\ub2e4"

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1100
    .restart local v5    # "sps":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1101
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1102
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v7, 0x8

    const/16 v8, 0x9

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1103
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1105
    .end local v5    # "sps":Landroid/text/SpannableStringBuilder;
    :cond_b
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v6, v6, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$45(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1107
    :cond_c
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v6, v6, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    if-nez v6, :cond_d

    .line 1108
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$46(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 1109
    :cond_d
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v6, v6, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v7, v7, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    sub-int v4, v6, v7

    .line 1110
    .restart local v4    # "sec":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 1111
    .restart local v3    # "len":I
    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "\ucd08 \ud6c4 \uad11\uace0\uac00 \uc885\ub8cc\ub429\ub2c8\ub2e4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1112
    .restart local v5    # "sps":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v3, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1113
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v7, v3, 0x3

    add-int/lit8 v8, v3, 0x4

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1114
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v7, v3, 0x7

    add-int/lit8 v8, v3, 0x8

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1115
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
