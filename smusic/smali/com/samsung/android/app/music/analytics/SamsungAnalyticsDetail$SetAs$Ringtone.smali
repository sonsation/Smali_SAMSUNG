.class public Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs$Ringtone;
.super Ljava/lang/Object;
.source "SamsungAnalyticsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ringtone"
.end annotation


# static fields
.field private static final ALARM:Ljava/lang/String; = "Alarm ringtone"

.field private static final CALLER:Ljava/lang/String; = "Caller ringtone"

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

.field private static final PHONE:Ljava/lang/String; = "Phone ringtone"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs$Ringtone;->MAP:Landroid/util/SparseArray;

    .line 93
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs$Ringtone;->MAP:Landroid/util/SparseArray;

    const v1, 0x7f12056d

    const-string v2, "Phone ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs$Ringtone;->MAP:Landroid/util/SparseArray;

    const v1, 0x7f120575

    const-string v2, "Caller ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs$Ringtone;->MAP:Landroid/util/SparseArray;

    const v1, 0x7f120576

    const-string v2, "Alarm ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
