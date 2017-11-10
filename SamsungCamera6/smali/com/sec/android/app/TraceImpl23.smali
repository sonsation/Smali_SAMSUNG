.class public Lcom/sec/android/app/TraceImpl23;
.super Ljava/lang/Object;
.source "TraceImpl23.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncTraceBegin(Ljava/lang/String;I)V
    .locals 2

    const-wide/16 v0, 0x400

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public static asyncTraceEnd(Ljava/lang/String;I)V
    .locals 2

    const-wide/16 v0, 0x400

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x400

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static traceCounter(Ljava/lang/String;I)V
    .locals 2

    const-wide/16 v0, 0x400

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method

.method public static traceEnd()V
    .locals 2

    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
