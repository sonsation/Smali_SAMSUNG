.class Lcom/android/launcher3/folder/folderlock/FolderLock$SingletonHolder;
.super Ljava/lang/Object;
.source "FolderLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/folderlock/FolderLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sFolderLockInstance:Lcom/android/launcher3/folder/folderlock/FolderLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/android/launcher3/folder/folderlock/FolderLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;-><init>(Lcom/android/launcher3/folder/folderlock/FolderLock$1;)V

    sput-object v0, Lcom/android/launcher3/folder/folderlock/FolderLock$SingletonHolder;->sFolderLockInstance:Lcom/android/launcher3/folder/folderlock/FolderLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/launcher3/folder/folderlock/FolderLock;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/launcher3/folder/folderlock/FolderLock$SingletonHolder;->sFolderLockInstance:Lcom/android/launcher3/folder/folderlock/FolderLock;

    return-object v0
.end method
