.class public Lcom/sec/android/app/camera/command/CmdIdStringMapper;
.super Ljava/lang/Object;
.source "CmdIdStringMapper.java"


# static fields
.field private static final mStringDepot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/command/CmdIdStringMapper$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/CmdIdStringMapper$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->mStringDepot:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->mStringDepot:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
