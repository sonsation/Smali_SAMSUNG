.class public Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;
.super Ljava/lang/Object;
.source "SingleOperatorOnErrorResumeNextViaSingle.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final originalSingle:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final resumeSingleInCaseOfError:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Single;Lrx/Single;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle<TT;>;"
    .local p1, "originalSingle":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "resumeSingleInCaseOfError":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-nez p1, :cond_0

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "originalSingle must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    if-nez p2, :cond_1

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resumeSingleInCaseOfError must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;->originalSingle:Lrx/Single;

    .line 22
    iput-object p2, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;->resumeSingleInCaseOfError:Lrx/Single;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;)Lrx/Single;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;

    .prologue
    .line 7
    iget-object v0, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;->resumeSingleInCaseOfError:Lrx/Single;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 7
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle<TT;>;"
    .local p1, "child":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle$1;-><init>(Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;Lrx/SingleSubscriber;)V

    .line 42
    .local v0, "parent":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 43
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNextViaSingle;->originalSingle:Lrx/Single;

    invoke-virtual {v1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 44
    return-void
.end method
