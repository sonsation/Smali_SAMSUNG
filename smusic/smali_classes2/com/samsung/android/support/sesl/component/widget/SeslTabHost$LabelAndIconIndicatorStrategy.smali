.class Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;
.super Ljava/lang/Object;
.source "SeslTabHost.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 618
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 619
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x3"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;

    .prologue
    .line 611
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 622
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 623
    .local v1, "context":Landroid/content/Context;
    const-string v8, "layout_inflater"

    .line 624
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 625
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    .line 626
    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    move-result-object v9

    .line 625
    invoke-virtual {v4, v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 629
    .local v5, "tabIndicator":Landroid/view/View;
    const v8, 0x1020016

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 630
    .local v6, "tv":Landroid/widget/TextView;
    const v8, 0x1020006

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 633
    .local v3, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    move v2, v0

    .line 634
    .local v2, "exclusive":Z
    :goto_0
    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 636
    .local v0, "bindIcon":Z
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 639
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 649
    :cond_1
    return-object v5

    .end local v0    # "bindIcon":Z
    .end local v2    # "exclusive":Z
    :cond_2
    move v2, v7

    .line 633
    goto :goto_0

    .restart local v2    # "exclusive":Z
    :cond_3
    move v0, v7

    .line 634
    goto :goto_1
.end method
