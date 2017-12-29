.class public final Ljava/io/FileDescriptor;
.super Ljava/lang/Object;
.source "FileDescriptor.java"


# static fields
.field public static final err:Ljava/io/FileDescriptor;

.field public static final in:Ljava/io/FileDescriptor;

.field public static final out:Ljava/io/FileDescriptor;


# instance fields
.field private descriptor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/io/FileDescriptor;->dupFd(I)Ljava/io/FileDescriptor;

    move-result-object v0

    sput-object v0, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    .line 80
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/io/FileDescriptor;->dupFd(I)Ljava/io/FileDescriptor;

    move-result-object v0

    sput-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    .line 89
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/io/FileDescriptor;->dupFd(I)Ljava/io/FileDescriptor;

    move-result-object v0

    sput-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 57
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "descriptor"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 61
    return-void
.end method

.method private static dupFd(I)Ljava/io/FileDescriptor;
    .locals 5
    .param p0, "fd"    # I

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Ljava/io/FileDescriptor;

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2, p0}, Ljava/io/FileDescriptor;-><init>(I)V

    sget v3, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/FileDescriptor;-><init>(I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native isSocket(I)Z
.end method


# virtual methods
.method public final getInt$()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    return v0
.end method

.method public isSocket$()Z
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    invoke-static {v0}, Ljava/io/FileDescriptor;->isSocket(I)Z

    move-result v0

    return v0
.end method

.method public final setInt$(I)V
    .locals 0
    .param p1, "fd"    # I

    .prologue
    .line 149
    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 148
    return-void
.end method

.method public native sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/SyncFailedException;
        }
    .end annotation
.end method

.method public valid()Z
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method