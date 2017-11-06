.class public Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs$Recommend;
.super Ljava/lang/Object;
.source "SamsungAnalyticsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recommend"
.end annotation


# static fields
.field private static final FROM_THE_BEGINNING:Ljava/lang/String; = "From the beginning"

.field private static final HIGHLIGHTS_ONLY:Ljava/lang/String; = "Highlights only"

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs$Recommend;->MAP:Landroid/util/SparseArray;

    .line 78
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs$Recommend;->MAP:Landroid/util/SparseArray;

    const v1, 0x7f120062

    const-string v2, "From the beginning"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs$Recommend;->MAP:Landroid/util/SparseArray;

    const v1, 0x7f12056c

    const-string v2, "Highlights only"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
