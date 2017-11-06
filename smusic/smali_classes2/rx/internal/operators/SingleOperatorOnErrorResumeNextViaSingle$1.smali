.class Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle$1;
.super Lrx/SingleSubscriber;
.source "SingleOperatorOnErrorResumeNextViaSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;

.field final synthetic val$child:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;Lrx/SingleSubscriber;)V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle$1;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle.1;"
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle$1;->this$0:Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;

    iput-object p2, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle$1;->val$child:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle$1;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle.1;"
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {p0}, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle$1;->unsubscribe()V

    .line 38
    iget-object v0, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle$1;->this$0:Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;

    invoke-static {v0}, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;->access$000(Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;)Lrx/Single;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, v1}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 39
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle$1;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 31
    return-void
.end method
