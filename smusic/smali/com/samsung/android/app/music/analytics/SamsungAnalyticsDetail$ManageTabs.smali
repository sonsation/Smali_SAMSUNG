.class public Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$ManageTabs;
.super Ljava/lang/Object;
.source "SamsungAnalyticsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManageTabs"
.end annotation


# static fields
.field public static final MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OFF:Ljava/lang/String; = "OFF"

.field public static final ON:Ljava/lang/String; = "ON"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$ManageTabs;->MAP:Landroid/util/SparseArray;

    .line 104
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$ManageTabs;->MAP:Landroid/util/SparseArray;

    const v1, 0x10030

    const-string v2, "5031"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$ManageTabs;->MAP:Landroid/util/SparseArray;

    const v1, 0x10004

    const-string v2, "5032"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$ManageTabs;->MAP:Landroid/util/SparseArray;

    const v1, 0x110001

    const-string v2, "5033"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$ManageTabs;->MAP:Landroid/util/SparseArray;

    const v1, 0x10002

    const-string v2, "5034"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$ManageTabs;->MAP:Landroid/util/SparseArray;

    const v1, 0x10003

    const-string v2, "5035"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$ManageTabs;->MAP:Landroid/util/SparseArray;

    const v1, 0x10006

    const-string v2, "5036"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$ManageTabs;->MAP:Landroid/util/SparseArray;

    const v1, 0x10007

    const-string v2, "5037"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$ManageTabs;->MAP:Landroid/util/SparseArray;

    const v1, 0x10008

    const-string v2, "5038"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
