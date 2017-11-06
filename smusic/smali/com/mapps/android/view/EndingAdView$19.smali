.class Lcom/mapps/android/view/EndingAdView$19;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->progressBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$v:I


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$19;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput p2, p0, Lcom/mapps/android/view/EndingAdView$19;->val$v:I

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$19;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$31(Lcom/mapps/android/view/EndingAdView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$19;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$31(Lcom/mapps/android/view/EndingAdView;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/mapps/android/view/EndingAdView$19;->val$v:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 766
    :cond_0
    return-void
.end method
