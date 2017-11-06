.class Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIndicatorStrategy;
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
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIndicatorStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    .line 662
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;

    .prologue
    .line 656
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIndicatorStrategy;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method
