.class Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "SeslTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;I)V
    .locals 0
    .param p2, "tabIndex"    # I

    .prologue
    .line 610
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$TabClickListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$TabClickListener;->mTabIndex:I

    .line 612
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;ILcom/samsung/android/support/sesl/component/widget/SeslTabWidget$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$1;

    .prologue
    .line 606
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$TabClickListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$TabClickListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;)Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 616
    return-void
.end method
