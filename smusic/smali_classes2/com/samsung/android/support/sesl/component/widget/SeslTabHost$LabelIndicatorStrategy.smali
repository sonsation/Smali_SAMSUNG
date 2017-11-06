.class Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelIndicatorStrategy;
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
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelIndicatorStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 591
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/CharSequence;Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;

    .prologue
    .line 585
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelIndicatorStrategy;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 7

    .prologue
    .line 594
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelIndicatorStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 595
    .local v0, "context":Landroid/content/Context;
    const-string v4, "layout_inflater"

    .line 596
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 597
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelIndicatorStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelIndicatorStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    .line 598
    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    move-result-object v5

    const/4 v6, 0x0

    .line 597
    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 601
    .local v2, "tabIndicator":Landroid/view/View;
    const v4, 0x1020016

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 602
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    return-object v2
.end method
