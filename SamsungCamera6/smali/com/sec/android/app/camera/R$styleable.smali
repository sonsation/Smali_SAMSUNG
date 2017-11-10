.class public final Lcom/sec/android/app/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final HelpHubImageViewer:[I

.field public static final HelpHubImageViewer_autoStart:I = 0x3

.field public static final HelpHubImageViewer_drawables:I = 0x0

.field public static final HelpHubImageViewer_oneshot:I = 0x4

.field public static final HelpHubImageViewer_period:I = 0x2

.field public static final HelpHubImageViewer_show_slide_time:I = 0x5

.field public static final HelpHubImageViewer_startButton:I = 0x1

.field public static final HelpHubTextView:[I

.field public static final HelpHubTextView_image:I = 0xe

.field public static final HelpHubTextView_image_att:I = 0x11

.field public static final HelpHubTextView_image_spr:I = 0x10

.field public static final HelpHubTextView_image_usc:I = 0x12

.field public static final HelpHubTextView_image_vzw:I = 0xf

.field public static final HelpHubTextView_images:I = 0xd

.field public static final HelpHubTextView_insideImg_gravity:I = 0xc

.field public static final HelpHubTextView_insideImg_height:I = 0x6

.field public static final HelpHubTextView_insideImg_padding:I = 0x5

.field public static final HelpHubTextView_insideImg_paddingBottom:I = 0x4

.field public static final HelpHubTextView_insideImg_paddingLeft:I = 0x1

.field public static final HelpHubTextView_insideImg_paddingRight:I = 0x2

.field public static final HelpHubTextView_insideImg_paddingTop:I = 0x3

.field public static final HelpHubTextView_insideImg_width:I = 0x7

.field public static final HelpHubTextView_insideImg_yDiff:I = 0x8

.field public static final HelpHubTextView_newLineString:I = 0xb

.field public static final HelpHubTextView_showDisplayString:I = 0xa

.field public static final HelpHubTextView_showDisplayValue:I = 0x9

.field public static final HelpHubTextView_text:I = 0x0

.field public static final SpinnerCustomPreference:[I

.field public static final SpinnerCustomPreference_defaultValue:I = 0x0

.field public static final SpinnerCustomPreference_entries:I = 0x2

.field public static final SpinnerCustomPreference_entryValues:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/R$styleable;->HelpHubImageViewer:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/camera/R$styleable;->HelpHubTextView:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/app/camera/R$styleable;->SpinnerCustomPreference:[I

    return-void

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data

    :array_1
    .array-data 4
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
    .end array-data

    :array_2
    .array-data 4
        0x7f010019
        0x7f01001a
        0x7f01001b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
