.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter$OrtographicConverter;
.super Ljava/lang/Object;
.source "CoordConverter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrtographicConverter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPSize(I)F
    .locals 1
    .param p1, "screenSize"    # I

    .prologue
    .line 29
    int-to-float v0, p1

    return v0
.end method

.method public getSSize(F)I
    .locals 1
    .param p1, "psize"    # F

    .prologue
    .line 34
    float-to-int v0, p1

    return v0
.end method
