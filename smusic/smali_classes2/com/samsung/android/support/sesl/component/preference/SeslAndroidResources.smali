.class public Lcom/samsung/android/support/sesl/component/preference/SeslAndroidResources;
.super Ljava/lang/Object;
.source "SeslAndroidResources.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final ANDROID_R_EDITTEXT_PREFERENCE_STYLE:I = 0x1010092

.field public static final ANDROID_R_ICON_FRAME:I = 0x102003e

.field public static final ANDROID_R_LIST_CONTAINER:I

.field public static final ANDROID_R_PREFERENCE_FRAGMENT_STYLE:I = 0x1010506

.field public static final ANDROID_R_SWITCH_WIDGET:I = 0x1020040


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/samsung/android/support/sesl/R$id;->list_container:I

    sput v0, Lcom/samsung/android/support/sesl/component/preference/SeslAndroidResources;->ANDROID_R_LIST_CONTAINER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
