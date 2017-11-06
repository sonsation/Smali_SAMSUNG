.class public Lcom/samsung/android/app/musiclibrary/ui/debug/TraceTag$TraceService;
.super Ljava/lang/Object;
.source "TraceTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/debug/TraceTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceService"
.end annotation


# static fields
.field public static final ON_BIND:Ljava/lang/String; = "Service onBind"

.field public static final ON_CREATE:Ljava/lang/String; = "Service onCreate"

.field private static final SERVICE:Ljava/lang/String; = "Service"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
