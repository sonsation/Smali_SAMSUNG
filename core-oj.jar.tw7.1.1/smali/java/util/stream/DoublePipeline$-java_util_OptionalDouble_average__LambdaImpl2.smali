.class final synthetic Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_average__LambdaImpl2;
.super Ljava/lang/Object;
.source "DoublePipeline.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DoublePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_OptionalDouble_average__LambdaImpl2"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, [D

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, [D

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/stream/DoublePipeline;->-java_util_stream_DoublePipeline_lambda$12([D[D)V

    return-void
.end method