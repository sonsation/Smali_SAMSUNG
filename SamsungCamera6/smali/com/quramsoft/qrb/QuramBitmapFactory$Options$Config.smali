.class public Lcom/quramsoft/qrb/QuramBitmapFactory$Options$Config;
.super Ljava/lang/Object;
.source "QuramBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# static fields
.field public static final ARGB_8888:I = 0x7

.field public static final RGB_565:I = 0x0

.field public static final RGB_888:I = 0x1

.field public static final YUV_420:I = 0x2

.field public static final YUV_420_NV21:I = 0x12

.field public static final YUV_422_H1V2:I = 0xe

.field public static final YUV_422_H2V1:I = 0x3

.field public static final YUV_444:I = 0xf

.field public static final YUYV:I = 0x11


# instance fields
.field final synthetic this$1:Lcom/quramsoft/qrb/QuramBitmapFactory$Options;


# direct methods
.method public constructor <init>(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 0

    iput-object p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options$Config;->this$1:Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
