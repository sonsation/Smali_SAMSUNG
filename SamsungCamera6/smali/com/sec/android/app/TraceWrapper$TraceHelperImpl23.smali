.class Lcom/sec/android/app/TraceWrapper$TraceHelperImpl23;
.super Ljava/lang/Object;
.source "TraceWrapper.java"

# interfaces
.implements Lcom/sec/android/app/TraceWrapper$TraceHelperBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/TraceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TraceHelperImpl23"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/TraceWrapper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/TraceWrapper$TraceHelperImpl23;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncTraceBegin(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/TraceImpl23;->asyncTraceBegin(Ljava/lang/String;I)V

    return-void
.end method

.method public asyncTraceEnd(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/TraceImpl23;->asyncTraceEnd(Ljava/lang/String;I)V

    return-void
.end method

.method public traceBegin(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/TraceImpl23;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method public traceCounter(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/TraceImpl23;->traceCounter(Ljava/lang/String;I)V

    return-void
.end method

.method public traceEnd()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/TraceImpl23;->traceEnd()V

    return-void
.end method
