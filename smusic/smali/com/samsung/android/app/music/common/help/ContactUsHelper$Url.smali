.class final Lcom/samsung/android/app/music/common/help/ContactUsHelper$Url;
.super Ljava/lang/Object;
.source "ContactUsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/help/ContactUsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Url"
.end annotation


# static fields
.field private static final URL_CONTACT_US:Ljava/lang/String; = "voc://view/contactUs"

.field private static final URL_DIRECT_FEEDBACK:Ljava/lang/String; = "voc://view/directFeedback"

.field private static final URL_SEND_FEEDBACK:Ljava/lang/String; = "voc://view/contactUs?actionType=sendFeedback"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
