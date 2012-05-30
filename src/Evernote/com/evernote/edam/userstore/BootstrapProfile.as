/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.userstore {

import org.apache.thrift.Set;
import org.apache.thrift.type.BigInteger;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;

import com.evernote.edam.userstore.BootstrapSettings;

  /**
   *  This structure describes a collection of bootstrap settings.
   * <dl>
   *  <dt>name:</dt>
   *    <dd>
   *    The unique name of the profile, which is guaranteed to remain consistent across
   *    calls to getBootstrapInfo.
   *    </dd>
   *  <dt>settings:</dt>
   *    <dd>
   *    The settings for this profile.
   *    </dd>
   *  </dl>
   */
  public class BootstrapProfile implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("BootstrapProfile");
    private static const NAME_FIELD_DESC:TField = new TField("name", TType.STRING, 1);
    private static const SETTINGS_FIELD_DESC:TField = new TField("settings", TType.STRUCT, 2);

    private var _name:String;
    public static const NAME:int = 1;
    private var _settings:BootstrapSettings;
    public static const SETTINGS:int = 2;


    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[NAME] = new FieldMetaData("name", TFieldRequirementType.REQUIRED, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[SETTINGS] = new FieldMetaData("settings", TFieldRequirementType.REQUIRED, 
          new StructMetaData(TType.STRUCT, BootstrapSettings));
    }
    {
      FieldMetaData.addStructMetaDataMap(BootstrapProfile, metaDataMap);
    }

    public function BootstrapProfile() {
    }

    public function get name():String {
      return this._name;
    }

    public function set name(name:String):void {
      this._name = name;
    }

    public function unsetName():void {
      this.name = null;
    }

    // Returns true if field name is set (has been assigned a value) and false otherwise
    public function isSetName():Boolean {
      return this.name != null;
    }

    public function get settings():BootstrapSettings {
      return this._settings;
    }

    public function set settings(settings:BootstrapSettings):void {
      this._settings = settings;
    }

    public function unsetSettings():void {
      this.settings = null;
    }

    // Returns true if field settings is set (has been assigned a value) and false otherwise
    public function isSetSettings():Boolean {
      return this.settings != null;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case NAME:
        if (value == null) {
          unsetName();
        } else {
          this.name = value;
        }
        break;

      case SETTINGS:
        if (value == null) {
          unsetSettings();
        } else {
          this.settings = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case NAME:
        return this.name;
      case SETTINGS:
        return this.settings;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case NAME:
        return isSetName();
      case SETTINGS:
        return isSetSettings();
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function read(iprot:TProtocol):void {
      var field:TField;
      iprot.readStructBegin();
      while (true)
      {
        field = iprot.readFieldBegin();
        if (field.type == TType.STOP) { 
          break;
        }
        switch (field.id)
        {
          case NAME:
            if (field.type == TType.STRING) {
              this.name = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SETTINGS:
            if (field.type == TType.STRUCT) {
              this.settings = new BootstrapSettings();
              this.settings.read(iprot);
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          default:
            TProtocolUtil.skip(iprot, field.type);
            break;
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();


      // check for required fields of primitive type, which can't be checked in the validate method
      validate();
    }

    public function write(oprot:TProtocol):void {
      validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (this.name != null) {
        oprot.writeFieldBegin(NAME_FIELD_DESC);
        oprot.writeString(this.name);
        oprot.writeFieldEnd();
      }
      if (this.settings != null) {
        oprot.writeFieldBegin(SETTINGS_FIELD_DESC);
        this.settings.write(oprot);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("BootstrapProfile(");
      var first:Boolean = true;

      ret += "name:";
      if (this.name == null) {
        ret += "null";
      } else {
        ret += this.name;
      }
      first = false;
      if (!first) ret +=  ", ";
      ret += "settings:";
      if (this.settings == null) {
        ret += "null";
      } else {
        ret += this.settings;
      }
      first = false;
      ret += ")";
      return ret;
    }

    public function validate():void {
      // check for required fields
      if (name == null) {
        throw new TProtocolError(TProtocolError.UNKNOWN, "Required field 'name' was not present! Struct: " + toString());
      }
      if (settings == null) {
        throw new TProtocolError(TProtocolError.UNKNOWN, "Required field 'settings' was not present! Struct: " + toString());
      }
      // check that fields of type enum have valid values
    }

  }

}
