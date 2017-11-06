.class Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIdContentStrategy;
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
    name = "ViewIdContentStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;I)V
    .locals 3
    .param p2, "viewId"    # I

    .prologue
    .line 676
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIdContentStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    .line 678
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 684
    return-void

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create tab content because could not find view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;ILcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;

    .prologue
    .line 672
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIdContentStrategy;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;I)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 693
    return-void
.end method
