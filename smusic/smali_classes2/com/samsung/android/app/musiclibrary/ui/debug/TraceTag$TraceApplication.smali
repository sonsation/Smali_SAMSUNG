.class public Lcom/samsung/android/app/musiclibrary/ui/debug/TraceTag$TraceApplication;
.super Ljava/lang/Object;
.source "TraceTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/debug/TraceTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceApplication"
.end annotation


# static fields
.field private static final APPLICATION:Ljava/lang/String; = "TraceApplication"

.field public static final BIXBY_CREATE:Ljava/lang/String; = " bixbyCompat create"

.field public static final INIT_CACHE:Ljava/lang/String; = "init cache"

.field public static final INIT_LYRIC:Ljava/lang/String; = "init lyric"

.field public static final ON_CREATE:Ljava/lang/String; = "TraceApplication onCreate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
