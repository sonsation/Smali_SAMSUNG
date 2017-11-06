.class public Lcom/samsung/android/app/music/milk/billing/SamsungBillingConstants;
.super Ljava/lang/Object;
.source "SamsungBillingConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingConstants$ErrorType;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingConstants$BillingAppDownloadResult;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingConstants$BillingAppStatus;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingConstants$Action;
    }
.end annotation


# static fields
.field public static final BILLING_PACKAGE:Ljava/lang/String; = "com.sec.android.app.billing"

.field public static final LOG_TAG:Ljava/lang/String; = "SamsungBilling"

.field public static final TOUCH_LOCK_TIME:I = 0xbb8

.field public static final WAITING_FOR_BILLING_WORK:J = 0x1b58L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
