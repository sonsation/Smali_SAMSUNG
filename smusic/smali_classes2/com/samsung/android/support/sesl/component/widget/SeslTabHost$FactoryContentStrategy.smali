.class Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;
.super Ljava/lang/Object;
.source "SeslTabHost.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/CharSequence;Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabContentFactory;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/CharSequence;
    .param p3, "factory"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabContentFactory;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 706
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;->mFactory:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabContentFactory;

    .line 707
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;->mFactory:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabContentFactory;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    return-void
.end method
