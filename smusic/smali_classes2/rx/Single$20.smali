.class Lrx/Single$20;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->doOnSuccess(Lrx/functions/Action1;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single;

.field final synthetic val$onSuccess:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/functions/Action1;)V
    .locals 0

    .prologue
    .line 2011
    .local p0, "this":Lrx/Single$20;, "Lrx/Single.20;"
    iput-object p1, p0, Lrx/Single$20;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$20;->val$onSuccess:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 2014
    .local p0, "this":Lrx/Single$20;, "Lrx/Single.20;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2018
    .local p0, "this":Lrx/Single$20;, "Lrx/Single.20;"
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2022
    .local p0, "this":Lrx/Single$20;, "Lrx/Single.20;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Single$20;->val$onSuccess:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 2023
    return-void
.end method
