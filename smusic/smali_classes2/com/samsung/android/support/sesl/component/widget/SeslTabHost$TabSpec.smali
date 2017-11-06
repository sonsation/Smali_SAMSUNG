.class public Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;
.super Ljava/lang/Object;
.source "SeslTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;

.field private mIndicatorStrategy:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->mTag:Ljava/lang/String;

    .line 496
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/String;Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;

    .prologue
    .line 487
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IndicatorStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->mIndicatorStrategy:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->mContentStrategy:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;
    .locals 3
    .param p1, "viewId"    # I

    .prologue
    .line 527
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIdContentStrategy;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIdContentStrategy;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;ILcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->mContentStrategy:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;

    .line 528
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 544
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->mContentStrategy:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;

    .line 545
    return-object p0
.end method

.method public setContent(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabContentFactory;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;
    .locals 3
    .param p1, "contentFactory"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabContentFactory;

    .prologue
    .line 536
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/CharSequence;Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabContentFactory;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->mContentStrategy:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;

    .line 537
    return-object p0
.end method

.method public setIndicator(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 518
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIndicatorStrategy;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIndicatorStrategy;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->mIndicatorStrategy:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IndicatorStrategy;

    .line 519
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 502
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelIndicatorStrategy;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/CharSequence;Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->mIndicatorStrategy:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IndicatorStrategy;

    .line 503
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 510
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->mIndicatorStrategy:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IndicatorStrategy;

    .line 511
    return-object p0
.end method
