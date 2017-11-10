.class interface abstract Lcom/sec/android/app/TraceWrapper$TraceHelperBase;
.super Ljava/lang/Object;
.source "TraceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/TraceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "TraceHelperBase"
.end annotation


# virtual methods
.method public abstract asyncTraceBegin(Ljava/lang/String;I)V
.end method

.method public abstract asyncTraceEnd(Ljava/lang/String;I)V
.end method

.method public abstract traceBegin(Ljava/lang/String;)V
.end method

.method public abstract traceCounter(Ljava/lang/String;I)V
.end method

.method public abstract traceEnd()V
.end method
