.class public interface abstract Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;
.super Ljava/lang/Object;
.source "FilterOptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/FilterOptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Filterable"
.end annotation


# virtual methods
.method public abstract getFilterOptionFromSettings(Landroid/content/SharedPreferences;)I
.end method

.method public abstract getFilterOptions()[I
.end method

.method public abstract saveFilterOptionToSettings(Landroid/content/SharedPreferences;I)V
.end method
