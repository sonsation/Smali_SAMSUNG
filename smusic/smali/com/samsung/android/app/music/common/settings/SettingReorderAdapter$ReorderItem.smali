.class public Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter$ReorderItem;
.super Ljava/lang/Object;
.source "SettingReorderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReorderItem"
.end annotation


# instance fields
.field public isChecked:Z

.field public isFixedItem:Z

.field public key:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
