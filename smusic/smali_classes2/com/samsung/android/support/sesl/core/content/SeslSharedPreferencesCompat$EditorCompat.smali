.class public final Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;
.super Ljava/lang/Object;
.source "SeslSharedPreferencesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditorCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat$Helper;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;


# instance fields
.field private final mHelper:Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat$Helper;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat$Helper;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat$Helper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->mHelper:Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat$Helper;

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->sInstance:Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->sInstance:Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;

    .line 54
    :cond_0
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->sInstance:Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->mHelper:Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat$Helper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat$Helper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 62
    return-void
.end method
