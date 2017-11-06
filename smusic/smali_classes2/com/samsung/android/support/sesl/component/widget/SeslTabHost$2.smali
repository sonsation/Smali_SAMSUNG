.class Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$2;
.super Ljava/lang/Object;
.source "SeslTabHost.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2
    .param p1, "tabIndex"    # I
    .param p2, "clicked"    # Z

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->setCurrentTab(I)V

    .line 172
    if-eqz p2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 175
    :cond_0
    return-void
.end method
