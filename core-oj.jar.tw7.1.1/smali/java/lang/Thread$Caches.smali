.class Ljava/lang/Thread$Caches;
.super Ljava/lang/Object;
.source "Thread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Caches"
.end annotation


# static fields
.field static final subclassAudits:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Thread$WeakClassKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1633
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1632
    sput-object v0, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    .line 1637
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 1636
    sput-object v0, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1630
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method